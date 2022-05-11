function [] = GPS_calculation(object,i,CG_Dataset)

% creation of the GPS dataset for the control group
GPS = [];
data = object.Subject(i).Angle;
control = CG_Dataset.GPS;

%% Left RMS for single cycles
for j = 1:length(data.Sagittal.Pelvis.left(1,:))
    rmsPel_tilt(j) = rms(data.Sagittal.Pelvis.left(:,j)- control.mean.Pelvis_tilt);
    rmsPel_obl(j) = rms(data.Frontal.Pelvis.left(:,j) - control.mean.Pelvis_obl);
    rmsPel_rot(j) = rms(data.Transverse.Pelvis.left(:,j) - control.mean.Pelvis_rot);
        %Hip
    rmsLHip_flex(j) = rms(data.Sagittal.Hip.left(:,j) - control.mean.Hip_flex);
    rmsLHip_abd(j) = rms(data.Frontal.Hip.left(:,j) - control.mean.Hip_abd);
    rmsLHip_rot(j) = rms(data.Transverse.Hip.left(:,j) - control.mean.Hip_rot);
        %Knee
    rmsLKnee_flex(j) = rms(data.Sagittal.Knee.left(:,j) - control.mean.Knee_flex);
        %Ankle
    rmsLAnkle_dors(j) = rms(data.Sagittal.Ankle.left(:,j) - control.mean.Knee_flex);
        %Foot
    rmsLFoot_prog(j) = rms(data.Transverse.Foot.left(:,j) - control.mean.Foot_prog);
        %Global - Gait
    LGait = [rmsPel_tilt, rmsPel_obl, rmsPel_rot, rmsLHip_flex, rmsLHip_abd, rmsLHip_rot, rmsLKnee_flex, rmsLAnkle_dors, rmsLFoot_prog];
    rmsLGait (j) = mean(LGait);
end 

%% Right RMS for single cycles
for j = 1:length(data.Sagittal.Pelvis.left(1,:))
    rmsPel_tilt(j) = rms(data.Sagittal.Pelvis.left(:,j)- control.mean.Pelvis_tilt);
    rmsPel_obl(j) = rms(data.Frontal.Pelvis.left(:,j) - control.mean.Pelvis_obl);
    rmsPel_rot(j) = rms(data.Transverse.Pelvis.left(:,j) - control.mean.Pelvis_rot);
        %Hip
    rmsLHip_flex(j) = rms(data.Sagittal.Hip.left(:,j) - control.mean.Hip_flex);
    rmsLHip_abd(j) = rms(data.Frontal.Hip.left(:,j) - control.mean.Hip_abd);
    rmsLHip_rot(j) = rms(data.Transverse.Hip.left(:,j) - control.mean.Hip_rot);
        %Knee
    rmsLKnee_flex(j) = rms(data.Sagittal.Knee.left(:,j) - control.mean.Knee_flex);
        %Ankle
    rmsLAnkle_dors(j) = rms(data.Sagittal.Ankle.left(:,j) - control.mean.Knee_flex);
        %Foot
    rmsLFoot_prog(j) = rms(data.Transverse.Foot.left(:,j) - control.mean.Foot_prog);
        %Global - Gait
    LGait = [rmsPel_tilt, rmsPel_obl, rmsPel_rot, rmsLHip_flex, rmsLHip_abd, rmsLHip_rot, rmsLKnee_flex, rmsLAnkle_dors, rmsLFoot_prog];
    rmsLGait (j) = mean(LGait);
end

%% Global Gait profile
rmsGait = [rmsLGait, rmsRGait];

%% mean and sd RMS of one subject
    %Pelvis
GPS.Pelvis_tilt = mean(rmsPel_tilt);
GPS.Pelvis_tilt_sd = std(rmsPel_tilt);
GPS.Pelvis_obl = mean(rmsPel_obl);
GPS.Pelvis_obl_sd = std(rmsPel_obl);
GPS.Pelvis_rot = mean(rmsPel_rot);
GPS.Pelvis_rot_sd = std(rmsPel_rot);
    %L Hip
GPS.LHip_flex = mean(rmsLHip_flex);
GPS.LHip_flex_sd = std(rmsLHip_flex);
GPS.LHip_abd = mean(rmsLHip_abd);
GPS.LHip_abd_sd = std(rmsLHip_abd);
GPS.LHip_rot = mean(rmsLHip_rot);
GPS.LHip_rot_sd = std(rmsLHip_rot);
    %R Hip
GPS.RHip_flex = mean(rmsRHip_flex);
GPS.RHip_flex_sd = std(rmsRHip_flex);
GPS.RHip_abd = mean(rmsRHip_abd);
GPS.RHip_abd_sd = std(rmsRHip_abd);
GPS.RHip_rot = mean(rmsRHip_rot);
GPS.RHip_rot_sd = std(rmsRHip_rot);
    %L Knee
GPS.LKnee_flex = mean(rmsLKnee_flex);
GPS.LKnee_flex_sd = std(rmsLKnee_flex);
    %R Knee
GPS.RKnee_flex = mean(rmsRKnee_flex);
GPS.RKnee_flex_sd = std(rmsRKnee_flex);
    %L Ankle
GPS.LAnkle_dors = mean(rmsLAnkle_dors);
GPS.LAnkle_dors_sd = std(rmsLAnkle_dors);
    %R Ankle
GPS.RAnkle_dors = mean(rmsRAnkle_dors);
GPS.RAnkle_dors_sd = std(rmsRAnkle_dors);
    %L Foot
GPS.LFoot_prog = mean(rmsLFoot_prog);
GPS.LFoot_prog_sd = std(rmsLFoot_prog);
    %R Foot
GPS.RFoot_prog = mean(rmsRFoot_prog);
GPS.RFoot_prog_sd = std(rmsRFoot_prog);
    %Global GPS
GPS.LGait = mean(rmsLGait);
GPS.RGait = mean(rmsRGait);
GPS.Gait = mean(rmsGait);

%saving in the object
object.Subject(i).GPS = GPS;

%% MAP plotting

Tags = categorical({'Pel Tilt', 'Pel Obl', 'Pel Rot', 'Hip Flex', 'Hip Abd', 'Hip Rot', 'Knee Flex', 'Ankle Dors', 'Foot Prog', 'GPS'});
Tags = reordercats(Tags,{'Pel Tilt', 'Pel Obl', 'Pel Rot', 'Hip Flex', 'Hip Abd', 'Hip Rot', 'Knee Flex', 'Ankle Dors', 'Foot Prog', 'GPS'});

subject = [GPS.Pelvis_tilt, 0, 0; GPS.Pelvis_obl, 0, 0; GPS.Pelvis_rot, 0, 0;...
    GPS.LHip_flex, GPS.RHip_flex, 0; GPS.LHip_abd, GPS.RHip_abd, 0; GPS.LHip_rot, GPS.RHip_rot, 0; ...
    GPS.LKnee_flex, GPS.RKnee_flex, 0; GPS.LAnkle_dors, GPS.RAnkle_dors, 0; GPS.LFoot_prog, GPS.RFoot_prog, 0;...
    GPS.LGait, GPS.RGait, GPS.Gait];

cgroup = [control.diff.Pelvis_tilt,  0, 0; control.diff.Pelvis_obl,  0, 0; control.diff.Pelvis_rot,  0, 0;...
    control.diff.Hip_flex, control.diff.Hip_flex, 0; control.diff.Hip_abd, control.diff.Hip_abd, 0; control.diff.Hip_rot, control.diff.Hip_rot, 0;...
    control.diff.Knee_flex, control.diff.Knee_flex, 0; control.diff.Ankle_dors, control.diff.Ankle_dors, 0; control.diff.Foot_prog, control.diff.Foot_prog, 0;...
    control.diff.Gait, control.diff.Gait, control.diff.Gait];

sd = [GPS.Pelvis_tilt_sd, GPS.Pelvis_obl_sd, GPS.Pelvis_rot_sd,...
    GPS.LHip_flex_sd, GPS.RHip_flex_sd, GPS.LHip_abd_sd, GPS.RHip_abd_sd, GPS.LHip_rot_sd, GPS.RHip_rot_sd, ...
    GPS.LKnee_flex_sd, GPS.RKnee_flex_sd, GPS.LAnkle_dors_sd, GPS.RAnkle_dors_sd, GPS.LFoot_prog_sd, GPS.RFoot_prog_sd,...
    GPS.LGait_sd, GPS.RGait_sd, GPS.Gait_sd];

% Plotting
red = [0.6353    0.0784    0.1843];
red_shadow = [0.9020    0.7294    0.7608];
green = [0.4667    0.6745    0.1882];
green_shadow = [0.7686    0.8588    0.6431];
grey_shadow = [0.8510    0.8510    0.8510];
dark_grey = [0.5020    0.5020    0.5020];

sub = length(object.Subject);
figure(i+sub*4)
b = bar(Tags,subject);
b(1).FaceColor = red_shadow;
b(2).FaceColor = green_shadow;
b(3).FaceColor = grey_shadow;
hold on
%SD bars
er = errorbar(Tags,subject, sd, sd);    
er.Color = [0 0 0];                            
er.LineStyle = 'none';
hold on
%Reference ranges
bar(cgroup,'FaceColor', dark_grey)

