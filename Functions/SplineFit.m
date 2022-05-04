%% Script for Spline Interpolaration of the Angular, Moment & Power Data
function [AngleFit,MomentFit,PowerFit] = SplineFit(object,Files,AngleFit,MomentFit,PowerFit,i,LStart,LEnd,nLcyc,RStart,REnd,nRcyc)
%% Left Side
Angle_indexL = 0;
Moment_indexL = 0;

Angle_indexR = 0;
Moment_indexR = 0;
for cL = 1 : nLcyc %Loop over all left cycles
    if object.Data(i).LKinem(cL)==1
        Angle_indexL = Angle_indexL + 1;
        % Definition of Spline Fit Parameters Left Side
        CycleStart = LStart(cL);
        CycleStop = LEnd(cL);
        frames = CycleStart:1:CycleStop;
        div = (CycleStop-CycleStart)/(100-1);
        samps = CycleStart:div:CycleStop;
        %Spline Fit Angles
        indx = 1; %Reset index  
        for l = 1 : length(Files(i).Data(1).data)
            if strncmp(Files(i).Data(1).data(l).name,'L',1)
                for p = 1 : 3
                    data = Files(i).Data(1).data(l).parameter(p,:);  
                    AngleFit.left.cycle(Angle_indexL).data(indx).parameter(p,:) = spline(frames,data(CycleStart:CycleStop),samps);
                    name = Files(i).Data(1).data(l).name;
                    AngleFit.left.cycle(Angle_indexL).data(indx).name = name;
                end
                indx = indx + 1;
            end
        end
    end
    if object.Data(i).LKin(cL)==1
        Moment_indexL = Moment_indexL + 1;
        % Definition of Spline Fit Parameters Left Side
        CycleStart = LStart(cL);
        CycleStop = LEnd(cL);
        frames = CycleStart:1:CycleStop;
        div = (CycleStop-CycleStart)/(100-1);
        samps = CycleStart:div:CycleStop;
        %Spline Fit Moments
        indx = 1; %Reset index  
        for l = 1 : length(Files(i).Data(2).data)
            if strncmp(Files(i).Data(2).data(l).name,'L',1)
                for p = 1 : 3
                    data = Files(i).Data(2).data(l).parameter(p,:);  
                    MomentFit.left.cycle(Moment_indexL).data(indx).parameter(p,:) = spline(frames,data(CycleStart:CycleStop),samps)/1000;
                    name = Files(i).Data(2).data(l).name;
                    MomentFit.left.cycle(Moment_indexL).data(indx).name = name;
                end
                indx = indx + 1;
            end
        end
        %Spline Fit Power
        indx = 1; %Reset index
        for l = 1 : length(Files(i).Data(3).data)
            if strncmp(Files(i).Data(3).data(l).name,'L',1)
                for p = 1 : 3
                    data = Files(i).Data(3).data(l).parameter(p,:);  
                    PowerFit.left.cycle(Moment_indexL).data(indx).parameter(p,:) = spline(frames,data(CycleStart:CycleStop),samps);
                    name = Files(i).Data(3).data(l).name;
                    PowerFit.left.cycle(Moment_indexL).data(indx).name = name;
                end
                indx = indx + 1;
            end
        end
    end 
end
clear CyscleStart CycleStop frames div samps data name
%% Right Side
for cR = 1 : nRcyc %Loop over all right cycles
    %Define Spline Fit Parameters Right Side
    if object.Data(i).RKinem(cR) == 1
        Angle_indexR = Angle_indexR + 1;
        CycleStart = RStart(cR);
        CycleStop = REnd(cR);
        frames = CycleStart:1:CycleStop;
        div = (CycleStop-CycleStart)/(100-1);
        samps = CycleStart:div:CycleStop;
        %Spline Fit Angles
        indx = 1; %Reset index  
        for l = 1 : length(Files(i).Data(1).data)
            if strncmp(Files(i).Data(1).data(l).name,'R',1)
                for p = 1 : 3
                    data = Files(i).Data(1).data(l).parameter(p,:);  
                    AngleFit.right.cycle(Angle_indexR).data(indx).parameter(p,:) = spline(frames,data(CycleStart:CycleStop),samps);
                    name = Files(i).Data(1).data(l).name;
                    AngleFit.right.cycle(Angle_indexR).data(indx).name = name;
                end
                indx = indx + 1;
            end
        end
    end
    
    if object.Data(i).RKin(cR)==1
        %Spline Fit Moments
        Moment_indexR = Moment_indexR + 1;
        CycleStart = RStart(cR);
        CycleStop = REnd(cR);
        frames = CycleStart:1:CycleStop;
        div = (CycleStop-CycleStart)/(100-1);
        samps = CycleStart:div:CycleStop;
        indx = 1; %Reset index  
        for l = 1 : length(Files(i).Data(2).data)
            if strncmp(Files(i).Data(2).data(l).name,'R',1)
                for p = 1 : 3
                    data = Files(i).Data(2).data(l).parameter(p,:);  
                    MomentFit.right.cycle(Moment_indexR).data(indx).parameter(p,:) = spline(frames,data(CycleStart:CycleStop),samps)/1000;
                    name = Files(i).Data(2).data(l).name;
                    MomentFit.right.cycle(Moment_indexR).data(indx).name = name;
                end
                indx = indx + 1;
            end
        end
        %Spline Fit Power
        indx = 1; %Reset index
        for l = 1 : length(Files(i).Data(3).data)
            if strncmp(Files(i).Data(3).data(l).name,'R',1)
                for p = 1 : 3
                    data = Files(i).Data(3).data(l).parameter(p,:);  
                    PowerFit.right.cycle(Moment_indexR).data(indx).parameter(p,:) = spline(frames,data(CycleStart:CycleStop),samps);
                    name = Files(i).Data(3).data(l).name;
                    PowerFit.right.cycle(Moment_indexR).data(indx).name = name;
                end
                indx = indx + 1;
            end
        end
    end
end
clear CyscleStart CycleStop frames div samps data name
end
