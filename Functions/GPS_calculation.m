function [] = GPS_calculation(object,i,CG_Dataset)

% creation of the GPS dataset for the control group
GPS = [];
data = object.Subject(i).Angle;
control = CG_Dataset.GPS;

%% Left RMS for single cycles
for j = 1:length(data.Sagittal.Pelvis.left(1,:))
    rmsPel_tilt(j) = rms(data.Sagittal.Pelvis.left(:,j)- control.Mean.Pel_tilt);
    rmsPel_obl(j) = rms(data.Frontal.Pelvis.left(:,j) - control.Mean.Pel_obl);
    rmsPel_rot(j) = rms(data.Transverse.Pelvis.left(:,j) - control.Mean.Pel_rot);
        %Hip
    rmsLHip_flex(j) = rms(data.Sagittal.Hip.left(:,j) - control.Mean.Hip_flex);
    rmsLHip_abd(j) = rms(data.Frontal.Hip.left(:,j) - control.Mean.Hip_abd);
    rmsLHip_rot(j) = rms(data.Transverse.Hip.left(:,j) - control.Mean.Hip_rot);
        %Knee
    rmsLKnee_flex(j) = rms(data.Sagittal.Knee.left(:,j) - control.Mean.Knee_flex);
        %Ankle
    rmsLAnkle_dors(j) = rms(data.Sagittal.Ankle.left(:,j) - control.Mean.Knee_flex);
        %Foot
    rmsLFoot_prog(j) = rms(data.Transverse.Foot.left(:,j) - control.Mean.Foot_prog);
        %Global - Gait
    LGait = [rmsPel_tilt, rmsPel_obl, rmsPel_rot, rmsLHip_flex, rmsLHip_abd, rmsLHip_rot, rmsLKnee_flex, rmsLAnkle_dors, rmsLFoot_prog];
    rmsLGait (j) = mean(LGait);
end 

%% Right RMS for single cycles
for j = 1:length(data.Sagittal.Pelvis.right(1,:))
    %Pelvis
    rmsPel_tilt(j) = rms(data.Sagittal.Pelvis.right(:,j)- control.Mean.Pel_tilt);
    rmsPel_obl(j) = rms(data.Frontal.Pelvis.right(:,j) - control.Mean.Pel_obl);
    rmsPel_rot(j) = rms(data.Transverse.Pelvis.right(:,j) - control.Mean.Pel_rot);
        %Hip
    rmsRHip_flex(j) = rms(data.Sagittal.Hip.right(:,j) - control.Mean.Hip_flex);
    rmsRHip_abd(j) = rms(data.Frontal.Hip.right(:,j) - control.Mean.Hip_abd);
    rmsRHip_rot(j) = rms(data.Transverse.Hip.right(:,j) - control.Mean.Hip_rot);
        %Knee
    rmsRKnee_flex(j) = rms(data.Sagittal.Knee.right(:,j) - control.Mean.Knee_flex);
        %Ankle
    rmsRAnkle_dors(j) = rms(data.Sagittal.Ankle.right(:,j) - control.Mean.Knee_flex);
        %Foot
    rmsRFoot_prog(j) = rms(data.Transverse.Foot.right(:,j) - control.Mean.Foot_prog);
        %Global - Gait
    RGait = [rmsPel_tilt, rmsPel_obl, rmsPel_rot, rmsLHip_flex, rmsLHip_abd, rmsLHip_rot, rmsLKnee_flex, rmsLAnkle_dors, rmsLFoot_prog];
    rmsRGait (j) = mean(RGait);
end

%% Global Gait profile
rmsGait = [rmsLGait, rmsRGait];

%% Mean and sd RMS of one subject
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
GPS.LGait_sd = std(rmsLGait);
GPS.RGait = mean(rmsRGait);
GPS.RGait_sd = std(rmsRGait);
GPS.Gait = mean(rmsGait);
GPS.Gait_sd = std(rmsGait);

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

sd = [GPS.Pelvis_tilt_sd,  0, 0;  GPS.Pelvis_obl_sd, 0, 0;  GPS.Pelvis_rot_sd, 0, 0; ...
    GPS.LHip_flex_sd, GPS.RHip_flex_sd, 0; GPS.LHip_abd_sd, GPS.RHip_abd_sd, 0; GPS.LHip_rot_sd, GPS.RHip_rot_sd, 0; ...
    GPS.LKnee_flex_sd, GPS.RKnee_flex_sd 0; GPS.LAnkle_dors_sd, GPS.RAnkle_dors_sd, 0; GPS.LFoot_prog_sd, GPS.RFoot_prog_sd, 0;...
    GPS.LGait_sd, GPS.RGait_sd, GPS.Gait_sd];

% Plotting
red = [0.6353    0.0784    0.1843];
red_shadow = [0.9020    0.7294    0.7608];
green = [0.4667    0.6745    0.1882];
green_shadow = [0.7686    0.8588    0.6431];
grey_shadow = [0.8510    0.8510    0.8510];
dark_grey = [0.4020    0.4020    0.4020];

sub = length(object.Subject);
f = figure(i+sub*4);
f.Position = [10  -20  1000  500];
b = bar(Tags,subject, 'grouped');
b(1).FaceColor = red_shadow;
b(2).FaceColor = green_shadow;
b(3).FaceColor = grey_shadow;
ylabel('RMS difference [deg]');
ylim([0 30]);
set(gca, 'YGrid', 'on', 'XGrid', 'off')
hold on

%Reference ranges
bar(cgroup,'FaceColor', dark_grey, 'FaceAlpha',.7);

hold on
%SD bars
[ngroups,nbars] = size(subject);
% Get the x coordinate of the bars
x = nan(nbars, ngroups);
for i = 1:nbars
    x(i,:) = b(i).XEndPoints;
end
% Plot the errorbars
errorbar(x',subject,sd,'k','linestyle','none');
%legend('SD');

%legend('Control');
legend('Left', 'Right', 'Global', 'Control');
