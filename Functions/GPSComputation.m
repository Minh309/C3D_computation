function [GPS] = GPSComputation(AngleFit,datafiles,GPS,GPScontrol,nLcyc,nRcyc,i)
%Segments for which GPS will be computetd
Segment = {'Thorax','Pelvis','LHip','RHip','LKnee','RKnee','LAnkle','RAnkle','LFoot','RFoot'};
%% Computation Start
%Test If Left & Right Cycle Exist
if nLcyc > 0 && nRcyc > 0       % Set left side segments to 0 if no Lcyc exist
    dataL = AngleFit(i).left.cycle(1).data;
    dataR = AngleFit(i).right.cycle(1).data;
    %GPS value are stored in the GPS structure
    GPSindx = length(GPS) + 1;
    GPS(GPSindx).name = datafiles(i);
    %% Computation of GPS per Segment
    for s = 1 : length(Segment)
        for l = 1 : length(dataL)
            if strncmp(Segment{s},dataL(l).name,3)
              SegID = s;
            elseif strncmp(Segment{s},dataR(l).name,3)
              SegID = s;
            else 
              SegID = 11;    
            end
            switch SegID
                case 1  %Thorax
                    GPSTrunk_flex = rms(data(l).parameter(1,:)-GPScontrol(2,:));
                    GPS(GPSindx).GPSTrunk_flex = GPSTrunk_flex;
                    GPSTrunk_latflex = rms(data(l).parameter(2,:)-GPScontrol(1,:));
                    GPS(GPSindx).GPSTrunk_latflex = GPSTrunk_latflex;
                    GPSTrunk_rot = rms(data(l).parameter(3,:)-GPScontrol(3,:));
                    GPS(GPSindx).GPSTrunk_rot = GPSTrunk_rot;

                case 2  %Pelvis
                    GPSPel_tilt = rms(data(l).parameter(1,:)-GPScontrol(5,:));
                    GPS(GPSindx).GPSPel_tilt = GPSPel_tilt;
                    GPSPel_obl = rms(data(l).parameter(2,:)-GPScontrol(4,:));
                    GPS(GPSindx).GPSPel_obl = GPSPel_obl;
                    GPSPel_rot = rms(data(l).parameter(3,:)-GPScontrol(6,:));
                    GPS(GPSindx).GPSPel_rot = GPSPel_rot;

                case 3  %LHip
                    GPSHipL_flex = rms(dataL(l).parameter(1,:)-GPScontrol(8,:));
                    GPS(GPSindx).GPSHipL_flex = GPSHipL_flex;
                    GPSHipL_abd = rms(dataL(l).parameter(2,:)-GPScontrol(7,:));
                    GPS(GPSindx).GPSHipL_abd = GPSHipL_abd;
                    GPSHipL_rot = rms(dataL(l).parameter(3,:)-GPScontrol(9,:));
                    GPS(GPSindx).GPSHipL_rot = GPSHipL_rot;

                case 4  %RHip
                    GPSHipR_flex = rms(dataR(l).parameter(1,:)-GPScontrol(8,:));
                    GPS(GPSindx).GPSHipR_flex = GPSHipR_flex;
                    GPSHipR_abd = rms(dataR(l).parameter(2,:)-GPScontrol(7,:));
                    GPS(GPSindx).GPSHipR_abd = GPSHipR_abd;
                    GPSHipR_rot = rms(dataR(l).parameter(3,:)-GPScontrol(9,:));
                    GPS(GPSindx).GPSHipR_rot = GPSHipR_rot;

                case 5  %LKnee
                    GPSKneeL_flex = rms(dataL(l).parameter(1,:)-GPScontrol(10,:));
                    GPS(GPSindx).GPSKneeL_flex = GPSKneeL_flex;

                case 6  %RKnee
                    GPSKneeR_flex = rms(dataR(l).parameter(1,:)-GPScontrol(10,:));
                    GPS(GPSindx).GPSKneeR_flex = GPSKneeR_flex;

                case 7 %LAnkle
                    GPSAnkL_dorsi = rms(dataL(l).parameter(1,:)-GPScontrol(11,:));
                    GPS(GPSindx).GPSAnkL_dorsi = GPSAnkL_dorsi;

                case 8 %RAnkle
                    GPSAnkR_dorsi = rms(dataR(l).parameter(1,:)-GPScontrol(11,:));
                    GPS(GPSindx).GPSAnkR_dorsi = GPSAnkR_dorsi;

                case 9 %LFoot
                    GPSFootL_prog = rms(dataL(l).parameter(3,:)-GPScontrol(12,:));
                    GPS(GPSindx).GPSFootL_prog = GPSFootL_prog;

                case 10 %RFoot
                    GPSFootR_prog = rms(dataR(l).parameter(3,:)-GPScontrol(12,:));
                    GPS(GPSindx).GPSFootR_prog = GPSFootR_prog;

                case 11  %No computation increment s 
            end
        end
    end
    %% Computation of Global, Lower Body (LB), Whole Body (WB) GPS
    %If left and right cycle exists
    if nRcyc > 0 && nLcyc > 0
        if exist('Thorax')
            GPS(GPSindx).GPSWB = mean([GPSTrunk_flex,GPSTrunk_latflex,GPSTrunk_rot,GPSPel_tilt,GPSPel_obl,GPSPel_rot,GPSHipL_flex,GPSHipL_abd,GPSHipL_rot,GPSHipR_flex,GPSHipR_abd,GPSHipR_Rot,GPSKneeL_flex,GPSKneeR_flex,GPSAnkL_dorsi,GPSAnkR_dorsi,GPSFootL_prog,GPSFootR_prog]);
            GPS(GPSindx).LGPSWB = mean([GPSTrunk_flex,GPSTrunk_latflex,GPSTrunk_rot,GPSPel_tilt,GPSPel_obl,GPSPel_rot,GPSHipL_flex,GPSHipL_abd,GPSHipL_rot,GPSKneeL_flex,GPSAnkL_dorsi,GPSFootL_prog]);
            GPS(GPSindx).RGPSWB = mean([GPSTrunk_flex,GPSTrunk_latflex,GPSTrunk_rot,GPSPel_tilt,GPSPel_obl,GPSPel_rot,GPSHipR_flex,GPSHipR_abd,GPSHipR_rot,GPSKneeR_flex,GPSAnkR_dorsi,GPSFootR_prog]);
            GPS(GPSindx).GPSLB = mean([GPSHipL_flex,GPSHipL_abd,GPSHipL_Rot,GPSHipR_flex,GPSHipR_abd,GPSHipR_Rot,GPSKneeL_flex,GPSKneeR_flex,GPSAnkL_dorsi,GPSAnkR_dorsi,GPSFootL_prog,GPSFootR_prog]);
            GPS(GPSindx).LGPSLB = mean([GPSHipL_flex,GPSHipL_abd,GPSHipL_Rot,GPSKneeL_flex,GPSAnkL_dorsi,GPSFootL_prog]);
            GPS(GPSindx).RGPSLB = mean([GPSHipR_flex,GPSHipR_abd,GPSHipR_Rot,GPSKneeR_flex,GPSAnkR_dorsi,GPSFootR_prog]);  

        else
            GPS(GPSindx).GPSLB = mean([GPSHipL_flex,GPSHipL_abd,GPSHipL_rot,GPSHipR_flex,GPSHipR_abd,GPSHipR_rot,GPSKneeL_flex,GPSKneeR_flex,GPSAnkL_dorsi,GPSAnkR_dorsi,GPSFootL_prog,GPSFootR_prog]);
            GPS(GPSindx).LGPSLB = mean([GPSHipL_flex,GPSHipL_abd,GPSHipL_rot,GPSKneeL_flex,GPSAnkL_dorsi,GPSFootL_prog]);
            GPS(GPSindx).RGPSLB = mean([GPSHipR_flex,GPSHipR_abd,GPSHipR_rot,GPSKneeR_flex,GPSAnkR_dorsi,GPSFootR_prog]); 
            GPS(GPSindx).GPSWB = GPS(GPSindx).GPSLB;
            GPS(GPSindx).LGPSWB = GPS(GPSindx).LGPSLB;
            GPS(GPSindx).RGPSWB = GPS(GPSindx).RGPSLB;
        end
    end

    % if nLcyc > 0 && nRcyc == 0  %If only left cycle exist
    %     LGPSLB = mean([GPSHipL_flex,GPSHipL_abd,GPSHipL_Rot,GPSKneeL_flex,GPSAnkL_dorsi,LFootGPS(3)]);
    %     RGPSLB = [];
    %     GPSLB = LGPSLB;
    %     if exist('ThoraxGPS')
    %         LGPSWB = mean([GPSTrunk_flex,GPSTrunk_latflex,GPSTrunk_rot,PelvisGPS(1),PelvisGPS(2),PelvisGPS(3),GPSHipL_flex,GPSHipL_abd,GPSHipL_Rot,GPSKneeL_flex,GPSAnkL_dorsi,LFootGPS(3)]);
    %         RGPSWB = 0;
    %         GPSWB = LGPSWB;
    %     else
    %         LGPSWB = LGPSLB;
    %         GPSWB = LGPSLB;
    %         RGPSWB = 0;
    %     end
    % elseif nLcyc ==  0 && nRcyc > 0 %If only right cycle exist
    %     RGPSLB = mean([GPSHipR_flex,GPSHipR_abd,GPSHipR_Rot,GPSKneeR_flex,GPSAnkR_dorsi,RFootGPS(3)]);
    %     LGPSLB = 0;
    %     GPSLB = LGPSLB;
    %     if exist ('ThoraxGPS')
    %         RGPSWB = mean([GPSTrunk_flex,GPSTrunk_latflex,GPSTrunk_rot,PelvisGPS(1),PelvisGPS(2),PelvisGPS(3),GPSHipR_flex,GPSHipR_abd,GPSHipR_Rot,GPSKneeR_flex,GPSAnkR_dorsi,RFootGPS(3)]);
    %         LGPSWB = [];
    %         GPSWB = RGPSWB;
    %     else
    %         RGPSWB = RGPSLB;
    %         GPSWB = RGPSLB;
    %         LGPSWB = 0;
    %     end
    % end
end
end