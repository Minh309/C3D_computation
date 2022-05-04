%% Plot Gait Kinematics and Kinematics
% Created by Lara Wehrmeyer 2021-03-16
% -------------------
% RUNNING PREPARATION
% -------------------
% 1. Specify the c3d files to read in "ReadIn.xlsx"
% 2. Specify if kinematic and kinemtic data is good (=1) or bad (=0) per cycle and side in "ReadIn.xlsx"
% 3. Specify if gait is asymmetric by stating affected side (L/R) in "ReadIn.xlsx".
% 4. Copy the c3d files to read in into the same folder as the MoveAbilityLab.m code
% 5. Specify if and where GPS & Gait Parameter computations should be saved (line 83 and on)
%--------------------
% MODIFICATIONS
%--------------------
% Modificated by Lara Wehrmeyer 2021-03-19
% Separation into affected and unaffected side after spline fit
% Affected Side == ASide
% Unaffected Side == USide
%--------------------
clear all
close all
clc
%% Read in .xlsx file
[num,txt,raw] = xlsread('ReadIn.xlsx'); %Reads an excel file with listed datafiles and kinematics & kinetics information
datafiles = raw(2:end,1);
%% Read in .mat file for GPS computation
load ControlBarn.mat    %Control file for GPS computation
GPScontrol = ControlBarn;
%% Definition of Data Structures
Files = [];         %Data structure for kinematics & kinetics
AngleFit = [];      %Data structure for angle spline fit
PowerFit = [];      %Data structure for power spline fit
MomentFit = [];     %Data structure for moment spline fit
PosWorkFit = [];    %Data structure for positive work computation
NegWorkFit = [];    %Data structure for negative work computation
GPS = [];           %Data structure for GPS values
GP = [];            %Data structure for gait parameter
%% Evaluation Start
for i = 1:length(datafiles) %Loop over all datafiles
LKin(1) = num(i,1); LKin(2) = num(i,2); RKin(1) = num(i,3); RKin(2) = num(i,4); %Defines if kinematic & kinetic data should be plottet (defined in excel file 'ReadIn.xlsx'
LKinem(1) = num(i,5); LKinem(2) = num(i,6); RKinem(1) = num(i,7); RKinem(2) = num(i,8);
fid = fopen(char(datafiles(i))); 
if (fid == -1)
    continue
end
file = char(datafiles(i));  
%% Read in Header Data
[POINTdat,VideoFrameRate,ANALOGdat,AnalogFrameRate,ParameterGroup,HeaderGroup] = readC3D_MoveAbilityLab(file);
if isempty(POINTdat)
    continue
end
%% Read in Point Data (Angles,Moment,Power,Force)
[Files] = KinematicDataInread(ParameterGroup,POINTdat,Files,i,datafiles);
if isempty(Files(i).Data)   %If no information increment file number
    continue
end
%% Read in Events & Cycles
[events,numevents] = EventDefinition(ParameterGroup,VideoFrameRate);
[LStart,LEnd,nLcyc,RStart,REnd,nRcyc] = CycleDefinition(numevents,events,HeaderGroup);
if (nRcyc == 0 && nLcyc == 0)  %If no cycles increment file number
    continue
end
%% Spline Fit Kinematics & Kinetics
%...parameter(1,:) = sagital plane,...parameter(2,:) = frontal plane,...parameter(3,:) = transverse plane
[AngleFit,MomentFit,PowerFit] = SplineFit(Files,AngleFit,MomentFit,PowerFit,i,LStart,LEnd,nLcyc,RStart,REnd,nRcyc);
%% Spline Fit Positive & Negative Work 
[PosWorkFit,NegWorkFit] = WorkFit(PowerFit,PosWorkFit,NegWorkFit,i,LStart,LEnd,nLcyc,RStart,REnd,nRcyc);
%% Separation into Affected and Unaffected Side for Asymmetric Gait
[ASAngleFit,ASMomentFit,ASPowerFit,ASPosWorkFit,ASNegWorkFit,ASgait] = ASGait(AngleFit,MomentFit,PowerFit,PosWorkFit,NegWorkFit,txt,i);
%% Plotting
figure(1) %Kinematics
AnglePlot(AngleFit,nLcyc,nRcyc,i,LKinem,RKinem);
figure(2) %Kinetics
MomentPowerPlot(MomentFit,PowerFit,nLcyc,nRcyc,i,LKin,RKin)
figure(3) %Kinematics Asymmetric Gait
ASAnglePlot(ASAngleFit,i,ASgait)
figure(4) %Kinetics Asymmetric Gait
ASMomentPowerPlot(ASMomentFit,ASPowerFit,i,ASgait); 
%% GPS Computation & GPS Write
[GPS] = GPSComputation(AngleFit,datafiles,GPS,GPScontrol,nLcyc,nRcyc,i);
%% Gait Parameter
[GP] = GPComputation(AngleFit,MomentFit,PowerFit,GP,datafiles,i);
 clear nRcyc nLcyc LStart RStart LEnd REnd ANALOGdat POINTdat
end
%% Stores 
%Save GPS 
GPSXLSX = 'GPS.xlsx';   %Filename for GPS
GPSWrite = 1;   %1 == save GPS results in xlsx file, 0 = save NOT GPS results on xlsx file
if GPSWrite == 1
    writetable(struct2table(GPS),GPSXLSX)
end
%Save GP
GPXLSX = 'GaitParameter.xlsx'; %Filename for Gait Parameter
GPWrite = 1; %1 == save gait parameter in xlsx file, 0 = save NOT gait parameter
if GPWrite == 1
writetable(struct2table(GP),GPXLSX)
end