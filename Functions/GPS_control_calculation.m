function [] = GPS_control_calculation(object,i)

% creation of the GPS dataset for the control group
GPS = [];
data = object.Subject(i).Angle;
%% Average gait vactors
    % Pelvis
GPS.Mean.Pel_tilt = data.Sagittal.Pelvis.Summary.Global_mean;
GPS.Mean.Pel_obl = data.Frontal.Pelvis.Summary.Global_mean;
GPS.Mean.Pel_rot = data.Transverse.Pelvis.Summary.Global_mean;
    %Hip
GPS.Mean.Hip_flex = data.Sagittal.Hip.Summary.Global_mean;
GPS.Mean.Hip_abd = data.Frontal.Hip.Summary.Global_mean;
GPS.Mean.Hip_rot = data.Transverse.Hip.Summary.Global_mean;
    %Knee
GPS.Mean.Knee_flex = data.Sagittal.Knee.Summary.Global_mean;
    %Ankle
GPS.Mean.Ankle_dors = data.Sagittal.Ankle.Summary.Global_mean;
    %Foot
GPS.Mean.Foot_prog = data.Transverse.Foot.Summary.Global_mean;

%% RMS difference of reference calculation
Pelvis_tilt = [data.Sagittal.Pelvis.left, data.Sagittal.Pelvis.right];
Pelvis_obl = [data.Frontal.Pelvis.left, data.Frontal.Pelvis.right];
Pelvis_rot = [data.Transverse.Pelvis.left, data.Transverse.Pelvis.right];
Hip_flex = [data.Sagittal.Hip.left, data.Sagittal.Hip.right];
Hip_abd = [data.Frontal.Hip.left, data.Frontal.Hip.right];
Hip_rot = [data.Transverse.Hip.left, data.Transverse.Hip.right];
Knee_flex = [data.Sagittal.Knee.left, data.Sagittal.Knee.right];
Ankle_dors = [data.Sagittal.Ankle.left, data.Sagittal.Ankle.righ];
Foot_prog = [data.Transverse.Foot.left,data.Transverse.Foot.right];

for j = 1:length(Pelvis_tilt(1,:))
    rmsPel_tilt(j) = rms(Pelvis_tilt(j)- data.Sagittal.Pelvis.Summary.Global_mean);
    rmsPel_obl(j) = rms(Pelvis_obl(j) - data.Frontal.Pelvis.Summary.Global_mean);
    rmsPel_rot(j) = rms(Pelvis_rot(j) - data.Transverse.Pelvis.Summary.Global_mean);
        %Hip
    rmsHip_flex(j) = rms(Hip_flex(j) - data.Sagittal.Hip.Summary.Global_mean);
    rmsHip_abd(j) = rms(Hip_abd(j) - data.Frontal.Hip.Summary.Global_mean);
    rmsHip_rot(j) = rms(Hip_rot(j) - data.Transverse.Hip.Summary.Global_mean);
        %Knee
    rmsKnee_flex(j) = rms(Knee_flex(j) - data.Sagittal.Knee.Summary.Global_mean);
        %Ankle
    rmsAnkle_dors(j) = rms(Ankle_dors(j) - data.Sagittal.Ankle.Summary.Global_mean);
        %Foot
    rmsFoot_prog(j) = rms(Foot_prog(j) - data.Transverse.Foot.Summary.Global_mean);
        %Global - Gait
    Gait = [rmsPel_tilt, rmsPel_obl, rmsPel_rot, rmsHip_flex, rmsHip_abd, rmsHip_rot, rmsKnee_flex, rmsAnkle_dors, rmsFoot_prog];
    rmsGait (j) = mean(Gait,2);
end 

GPS.diff.Pelvis_tilt = mean(rmsPel_tilt,2);
GPS.diff.Pelvis_obl = mean(rmsPel_obl,2);
GPS.diff.Pelvis_rot = mean(rmsPel_rot,2);
GPS.diff.Hip_flex = mean(rmsHip_flex,2);
GPS.diff.Hip_abd = mean(rmsHip_abd,2);
GPS.diff.Hip_rot = mean(rmsHip_rot,2);
GPS.diff.Knee_flex = mean(rmsKnee_flex,2);
GPS.diff.Ankle_dors = mean(rmsAnkle_dors,2);
GPS.diff.Foot_prog = mean(rmsFoot_prog,2);
GPS.diff.Gait = mean(Gait,2);

%% Include in Subject structure
object.Subject(i).GPS = GPS;

