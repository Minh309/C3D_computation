function [] = getSummary(object, i)

%% Angle_summary
%simplify how to call the parts of the structure
A_sagittal = object.Subject(i).Angle.Sagittal;
A_frontal = object.Subject(i).Angle.Frontal;
A_transverse = object.Subject(i).Angle.Transverse;

% Thorax
    %Left
A_sagittal.Thorax.Summary.Left_mean = mean(A_sagittal.Thorax.left,2);
A_sagittal.Thorax.Summary.Left_sd = std(A_sagittal.Thorax.left,0,2);
A_sagittal.Thorax.Summary.Left_max = max(A_sagittal.Thorax.left,[],2);
A_sagittal.Thorax.Summary.Left_min = min(A_sagittal.Thorax.left,[],2);
A_frontal.Thorax.Summary.Left_mean = mean(A_frontal.Thorax.left,2);
A_frontal.Thorax.Summary.Left_sd = std(A_frontal.Thorax.left,0,2);
A_frontal.Thorax.Summary.Left_max = max(A_frontal.Thorax.left,[],2);
A_frontal.Thorax.Summary.Left_min = min(A_frontal.Thorax.left,[],2);
A_transverse.Thorax.Summary.Left_mean = mean(A_transverse.Thorax.left,2);
A_transverse.Thorax.Summary.Left_sd = std(A_transverse.Thorax.left,0,2);
A_transverse.Thorax.Summary.Left_max = max(A_transverse.Thorax.left,[],2);
A_transverse.Thorax.Summary.Left_min = min(A_transverse.Thorax.left,[],2);
    %Right
A_sagittal.Thorax.Summary.Right_mean = mean(A_sagittal.Thorax.right,2);
A_sagittal.Thorax.Summary.Right_sd = std(A_sagittal.Thorax.right,0,2);
A_sagittal.Thorax.Summary.Right_max = max(A_sagittal.Thorax.right,[],2);
A_sagittal.Thorax.Summary.Right_min = min(A_sagittal.Thorax.right,[],2);
A_frontal.Thorax.Summary.Right_mean = mean(A_frontal.Thorax.right,2);
A_frontal.Thorax.Summary.Right_sd = std(A_frontal.Thorax.right,0,2);
A_frontal.Thorax.Summary.Right_max = max(A_frontal.Thorax.right,[],2);
A_frontal.Thorax.Summary.Right_min = min(A_frontal.Thorax.right,[],2);
A_transverse.Thorax.Summary.Right_mean = mean(A_transverse.Thorax.right,2);
A_transverse.Thorax.Summary.Right_sd = std(A_transverse.Thorax.right,0,2);
A_transverse.Thorax.Summary.Right_max = max(A_transverse.Thorax.right,[],2);
A_transverse.Thorax.Summary.Right_min = min(A_transverse.Thorax.right,[],2);
    %Global
A_sagittal.Thorax.Summary.Global_mean = mean([A_sagittal.Thorax.left,A_sagittal.Thorax.right],2);
A_sagittal.Thorax.Summary.Global_sd = std([A_sagittal.Thorax.left,A_sagittal.Thorax.right],0,2);
A_sagittal.Thorax.Summary.Global_max = max([A_sagittal.Thorax.left,A_sagittal.Thorax.right],[],2);
A_sagittal.Thorax.Summary.Global_min = min([A_sagittal.Thorax.left,A_sagittal.Thorax.right],[],2);
A_frontal.Thorax.Summary.Global_mean = mean([A_frontal.Thorax.left,A_frontal.Thorax.right],2);
A_frontal.Thorax.Summary.Global_sd = std([A_frontal.Thorax.left,A_frontal.Thorax.right],0,2);
A_frontal.Thorax.Summary.Global_max = max([A_frontal.Thorax.left,A_frontal.Thorax.right],[],2);
A_frontal.Thorax.Summary.Global_min = min([A_frontal.Thorax.left,A_frontal.Thorax.right],[],2);
A_transverse.Thorax.Summary.Global_mean = mean([A_transverse.Thorax.left,A_transverse.Thorax.right],2);
A_transverse.Thorax.Summary.Global_sd = std([A_transverse.Thorax.left,A_transverse.Thorax.right],0,2);
A_transverse.Thorax.Summary.Global_max = max([A_transverse.Thorax.left,A_transverse.Thorax.right],[],2);
A_transverse.Thorax.Summary.Global_min = min([A_transverse.Thorax.left,A_transverse.Thorax.right],[],2);

% Pelvis
    %Left
A_sagittal.Pelvis.Summary.Left_mean = mean(A_sagittal.Pelvis.left,2);
A_sagittal.Pelvis.Summary.Left_sd = std(A_sagittal.Pelvis.left,0,2);
A_sagittal.Pelvis.Summary.Left_max = max(A_sagittal.Pelvis.left,[],2);
A_sagittal.Pelvis.Summary.Left_min = min(A_sagittal.Pelvis.left,[],2);
A_frontal.Pelvis.Summary.Left_mean = mean(A_frontal.Pelvis.left,2);
A_frontal.Pelvis.Summary.Left_sd = std(A_frontal.Pelvis.left,0,2);
A_frontal.Pelvis.Summary.Left_max = max(A_frontal.Pelvis.left,[],2);
A_frontal.Pelvis.Summary.Left_min = min(A_frontal.Pelvis.left,[],2);
A_transverse.Pelvis.Summary.Left_mean = mean(A_transverse.Pelvis.left,2);
A_transverse.Pelvis.Summary.Left_sd = std(A_transverse.Pelvis.left,0,2);
A_transverse.Pelvis.Summary.Left_max = max(A_transverse.Pelvis.left,[],2);
A_transverse.Pelvis.Summary.Left_min = min(A_transverse.Pelvis.left,[],2);
    %Right
A_sagittal.Pelvis.Summary.Right_mean = mean(A_sagittal.Pelvis.right,2);
A_sagittal.Pelvis.Summary.Right_sd = std(A_sagittal.Pelvis.right,0,2);
A_sagittal.Pelvis.Summary.Right_max = max(A_sagittal.Pelvis.right,[],2);
A_sagittal.Pelvis.Summary.Right_min = min(A_sagittal.Pelvis.right,[],2);
A_frontal.Pelvis.Summary.Right_mean = mean(A_frontal.Pelvis.right,2);
A_frontal.Pelvis.Summary.Right_sd = std(A_frontal.Pelvis.right,0,2);
A_frontal.Pelvis.Summary.Right_max = max(A_frontal.Pelvis.right,[],2);
A_frontal.Pelvis.Summary.Right_min = min(A_frontal.Pelvis.right,[],2);
A_transverse.Pelvis.Summary.Right_mean = mean(A_transverse.Pelvis.right,2);
A_transverse.Pelvis.Summary.Right_sd = std(A_transverse.Pelvis.right,0,2);
A_transverse.Pelvis.Summary.Right_max = max(A_transverse.Pelvis.right,[],2);
A_transverse.Pelvis.Summary.Right_min = min(A_transverse.Pelvis.right,[],2);
    %Global
A_sagittal.Pelvis.Summary.Global_mean = mean([A_sagittal.Pelvis.left,A_sagittal.Pelvis.right],2);
A_sagittal.Pelvis.Summary.Global_sd = std([A_sagittal.Pelvis.left,A_sagittal.Pelvis.right],0,2);
A_sagittal.Pelvis.Summary.Global_max = max([A_sagittal.Pelvis.left,A_sagittal.Pelvis.right],[],2);
A_sagittal.Pelvis.Summary.Global_min = min([A_sagittal.Pelvis.left,A_sagittal.Pelvis.right],[],2);
A_frontal.Pelvis.Summary.Global_mean = mean([A_frontal.Pelvis.left,A_frontal.Pelvis.right],2);
A_frontal.Pelvis.Summary.Global_sd = std([A_frontal.Pelvis.left,A_frontal.Pelvis.right],0,2);
A_frontal.Pelvis.Summary.Global_max = max([A_frontal.Pelvis.left,A_frontal.Pelvis.right],[],2);
A_frontal.Pelvis.Summary.Global_min = min([A_frontal.Pelvis.left,A_frontal.Pelvis.right],[],2);
A_transverse.Pelvis.Summary.Global_mean = mean([A_transverse.Pelvis.left,A_transverse.Pelvis.right],2);
A_transverse.Pelvis.Summary.Global_sd = std([A_transverse.Pelvis.left,A_transverse.Pelvis.right],0,2);
A_transverse.Pelvis.Summary.Global_max = max([A_transverse.Pelvis.left,A_transverse.Pelvis.right],[],2);
A_transverse.Pelvis.Summary.Global_min = min([A_transverse.Pelvis.left,A_transverse.Pelvis.right],[],2);

% Hip
    %Left
A_sagittal.Hip.Summary.Left_mean = mean(A_sagittal.Hip.left,2);
A_sagittal.Hip.Summary.Left_sd = std(A_sagittal.Hip.left,0,2);
A_sagittal.Hip.Summary.Left_max = max(A_sagittal.Hip.left,[],2);
A_sagittal.Hip.Summary.Left_min = min(A_sagittal.Hip.left,[],2);
A_frontal.Hip.Summary.Left_mean = mean(A_frontal.Hip.left,2);
A_frontal.Hip.Summary.Left_sd = std(A_frontal.Hip.left,0,2);
A_frontal.Hip.Summary.Left_max = max(A_frontal.Hip.left,[],2);
A_frontal.Hip.Summary.Left_min = min(A_frontal.Hip.left,[],2);
A_transverse.Hip.Summary.Left_mean = mean(A_transverse.Hip.left,2);
A_transverse.Hip.Summary.Left_sd = std(A_transverse.Hip.left,0,2);
A_transverse.Hip.Summary.Left_max = max(A_transverse.Hip.left,[],2);
A_transverse.Hip.Summary.Left_min = min(A_transverse.Hip.left,[],2);
    %Right
A_sagittal.Hip.Summary.Right_mean = mean(A_sagittal.Hip.right,2);
A_sagittal.Hip.Summary.Right_sd = std(A_sagittal.Hip.right,0,2);
A_sagittal.Hip.Summary.Right_max = max(A_sagittal.Hip.right,[],2);
A_sagittal.Hip.Summary.Right_min = min(A_sagittal.Hip.right,[],2);
A_frontal.Hip.Summary.Right_mean = mean(A_frontal.Hip.right,2);
A_frontal.Hip.Summary.Right_sd = std(A_frontal.Hip.right,0,2);
A_frontal.Hip.Summary.Right_max = max(A_frontal.Hip.right,[],2);
A_frontal.Hip.Summary.Right_min = min(A_frontal.Hip.right,[],2);
A_transverse.Hip.Summary.Right_mean = mean(A_transverse.Hip.right,2);
A_transverse.Hip.Summary.Right_sd = std(A_transverse.Hip.right,0,2);
A_transverse.Hip.Summary.Right_max = max(A_transverse.Hip.right,[],2);
A_transverse.Hip.Summary.Right_min = min(A_transverse.Hip.right,[],2);
    %Global
A_sagittal.Hip.Summary.Global_mean = mean([A_sagittal.Hip.left,A_sagittal.Hip.right],2);
A_sagittal.Hip.Summary.Global_sd = std([A_sagittal.Hip.left,A_sagittal.Hip.right],0,2);
A_sagittal.Hip.Summary.Global_max = max([A_sagittal.Hip.left,A_sagittal.Hip.right],[],2);
A_sagittal.Hip.Summary.Global_min = min([A_sagittal.Hip.left,A_sagittal.Hip.right],[],2);
A_frontal.Hip.Summary.Global_mean = mean([A_frontal.Hip.left,A_frontal.Hip.right],2);
A_frontal.Hip.Summary.Global_sd = std([A_frontal.Hip.left,A_frontal.Hip.right],0,2);
A_frontal.Hip.Summary.Global_max = max([A_frontal.Hip.left,A_frontal.Hip.right],[],2);
A_frontal.Hip.Summary.Global_min = min([A_frontal.Hip.left,A_frontal.Hip.right],[],2);
A_transverse.Hip.Summary.Global_mean = mean([A_transverse.Hip.left,A_transverse.Hip.right],2);
A_transverse.Hip.Summary.Global_sd = std([A_transverse.Hip.left,A_transverse.Hip.right],0,2);
A_transverse.Hip.Summary.Global_max = max([A_transverse.Hip.left,A_transverse.Hip.right],[],2);
A_transverse.Hip.Summary.Global_min = min([A_transverse.Hip.left,A_transverse.Hip.right],[],2);

% Knee
    %Left
A_sagittal.Knee.Summary.Left_mean = mean(A_sagittal.Knee.left,2);
A_sagittal.Knee.Summary.Left_sd = std(A_sagittal.Knee.left,0,2);
A_sagittal.Knee.Summary.Left_max = max(A_sagittal.Knee.left,[],2);
A_sagittal.Knee.Summary.Left_min = min(A_sagittal.Knee.left,[],2);
A_frontal.Knee.Summary.Left_mean = mean(A_frontal.Knee.left,2);
A_frontal.Knee.Summary.Left_sd = std(A_frontal.Knee.left,0,2);
A_frontal.Knee.Summary.Left_max = max(A_frontal.Knee.left,[],2);
A_frontal.Knee.Summary.Left_min = min(A_frontal.Knee.left,[],2);
A_transverse.Knee.Summary.Left_mean = mean(A_transverse.Knee.left,2);
A_transverse.Knee.Summary.Left_sd = std(A_transverse.Knee.left,0,2);
A_transverse.Knee.Summary.Left_max = max(A_transverse.Knee.left,[],2);
A_transverse.Knee.Summary.Left_min = min(A_transverse.Knee.left,[],2);
    %Right
A_sagittal.Knee.Summary.Right_mean = mean(A_sagittal.Knee.right,2);
A_sagittal.Knee.Summary.Right_sd = std(A_sagittal.Knee.right,0,2);
A_sagittal.Knee.Summary.Right_max = max(A_sagittal.Knee.right,[],2);
A_sagittal.Knee.Summary.Right_min = min(A_sagittal.Knee.right,[],2);
A_frontal.Knee.Summary.Right_mean = mean(A_frontal.Knee.right,2);
A_frontal.Knee.Summary.Right_sd = std(A_frontal.Knee.right,0,2);
A_frontal.Knee.Summary.Right_max = max(A_frontal.Knee.right,[],2);
A_frontal.Knee.Summary.Right_min = min(A_frontal.Knee.right,[],2);
A_transverse.Knee.Summary.Right_mean = mean(A_transverse.Knee.right,2);
A_transverse.Knee.Summary.Right_sd = std(A_transverse.Knee.right,0,2);
A_transverse.Knee.Summary.Right_max = max(A_transverse.Knee.right,[],2);
A_transverse.Knee.Summary.Right_min = min(A_transverse.Knee.right,[],2);
    %Global
A_sagittal.Knee.Summary.Global_mean = mean([A_sagittal.Knee.left,A_sagittal.Knee.right],2);
A_sagittal.Knee.Summary.Global_sd = std([A_sagittal.Knee.left,A_sagittal.Knee.right],0,2);
A_sagittal.Knee.Summary.Global_max = max([A_sagittal.Knee.left,A_sagittal.Knee.right],[],2);
A_sagittal.Knee.Summary.Global_min = min([A_sagittal.Knee.left,A_sagittal.Knee.right],[],2);
A_frontal.Knee.Summary.Global_mean = mean([A_frontal.Knee.left,A_frontal.Knee.right],2);
A_frontal.Knee.Summary.Global_sd = std([A_frontal.Knee.left,A_frontal.Knee.right],0,2);
A_frontal.Knee.Summary.Global_max = max([A_frontal.Knee.left,A_frontal.Knee.right],[],2);
A_frontal.Knee.Summary.Global_min = min([A_frontal.Knee.left,A_frontal.Knee.right],[],2);
A_transverse.Knee.Summary.Global_mean = mean([A_transverse.Knee.left,A_transverse.Knee.right],2);
A_transverse.Knee.Summary.Global_sd = std([A_transverse.Knee.left,A_transverse.Knee.right],0,2);
A_transverse.Knee.Summary.Global_max = max([A_transverse.Knee.left,A_transverse.Knee.right],[],2);
A_transverse.Knee.Summary.Global_min = min([A_transverse.Knee.left,A_transverse.Knee.right],[],2);

% Ankle
    %Left
A_sagittal.Ankle.Summary.Left_mean = mean(A_sagittal.Ankle.left,2);
A_sagittal.Ankle.Summary.Left_sd = std(A_sagittal.Ankle.left,0,2);
A_sagittal.Ankle.Summary.Left_max = max(A_sagittal.Ankle.left,[],2);
A_sagittal.Ankle.Summary.Left_min = min(A_sagittal.Ankle.left,[],2);
A_frontal.Ankle.Summary.Left_mean = mean(A_frontal.Ankle.left,2);
A_frontal.Ankle.Summary.Left_sd = std(A_frontal.Ankle.left,0,2);
A_frontal.Ankle.Summary.Left_max = max(A_frontal.Ankle.left,[],2);
A_frontal.Ankle.Summary.Left_min = min(A_frontal.Ankle.left,[],2);
A_transverse.Ankle.Summary.Left_mean = mean(A_transverse.Ankle.left,2);
A_transverse.Ankle.Summary.Left_sd = std(A_transverse.Ankle.left,0,2);
A_transverse.Ankle.Summary.Left_max = max(A_transverse.Ankle.left,[],2);
A_transverse.Ankle.Summary.Left_min = min(A_transverse.Ankle.left,[],2);
    %Right
A_sagittal.Ankle.Summary.Right_mean = mean(A_sagittal.Ankle.right,2);
A_sagittal.Ankle.Summary.Right_sd = std(A_sagittal.Ankle.right,0,2);
A_sagittal.Ankle.Summary.Right_max = max(A_sagittal.Ankle.right,[],2);
A_sagittal.Ankle.Summary.Right_min = min(A_sagittal.Ankle.right,[],2);
A_frontal.Ankle.Summary.Right_mean = mean(A_frontal.Ankle.right,2);
A_frontal.Ankle.Summary.Right_sd = std(A_frontal.Ankle.right,0,2);
A_frontal.Ankle.Summary.Right_max = max(A_frontal.Ankle.right,[],2);
A_frontal.Ankle.Summary.Right_min = min(A_frontal.Ankle.right,[],2);
A_transverse.Ankle.Summary.Right_mean = mean(A_transverse.Ankle.right,2);
A_transverse.Ankle.Summary.Right_sd = std(A_transverse.Ankle.right,0,2);
A_transverse.Ankle.Summary.Right_max = max(A_transverse.Ankle.right,[],2);
A_transverse.Ankle.Summary.Right_min = min(A_transverse.Ankle.right,[],2);
    %Global
A_sagittal.Ankle.Summary.Global_mean = mean([A_sagittal.Ankle.left,A_sagittal.Ankle.right],2);
A_sagittal.Ankle.Summary.Global_sd = std([A_sagittal.Ankle.left,A_sagittal.Ankle.right],0,2);
A_sagittal.Ankle.Summary.Global_max = max([A_sagittal.Ankle.left,A_sagittal.Ankle.right],[],2);
A_sagittal.Ankle.Summary.Global_min = min([A_sagittal.Ankle.left,A_sagittal.Ankle.right],[],2);
A_frontal.Ankle.Summary.Global_mean = mean([A_frontal.Ankle.left,A_frontal.Ankle.right],2);
A_frontal.Ankle.Summary.Global_sd = std([A_frontal.Ankle.left,A_frontal.Ankle.right],0,2);
A_frontal.Ankle.Summary.Global_max = max([A_frontal.Ankle.left,A_frontal.Ankle.right],[],2);
A_frontal.Ankle.Summary.Global_min = min([A_frontal.Ankle.left,A_frontal.Ankle.right],[],2);
A_transverse.Ankle.Summary.Global_mean = mean([A_transverse.Ankle.left,A_transverse.Ankle.right],2);
A_transverse.Ankle.Summary.Global_sd = std([A_transverse.Ankle.left,A_transverse.Ankle.right],0,2);
A_transverse.Ankle.Summary.Global_max = max([A_transverse.Ankle.left,A_transverse.Ankle.right],[],2);
A_transverse.Ankle.Summary.Global_min = min([A_transverse.Ankle.left,A_transverse.Ankle.right],[],2);

% Foot
    %Left
A_sagittal.Foot.Summary.Left_mean = mean(A_sagittal.Foot.left,2);
A_sagittal.Foot.Summary.Left_sd = std(A_sagittal.Foot.left,0,2);
A_sagittal.Foot.Summary.Left_max = max(A_sagittal.Foot.left,[],2);
A_sagittal.Foot.Summary.Left_min = min(A_sagittal.Foot.left,[],2);
A_frontal.Foot.Summary.Left_mean = mean(A_frontal.Foot.left,2);
A_frontal.Foot.Summary.Left_sd = std(A_frontal.Foot.left,0,2);
A_frontal.Foot.Summary.Left_max = max(A_frontal.Foot.left,[],2);
A_frontal.Foot.Summary.Left_min = min(A_frontal.Foot.left,[],2);
A_transverse.Foot.Summary.Left_mean = mean(A_transverse.Foot.left,2);
A_transverse.Foot.Summary.Left_sd = std(A_transverse.Foot.left,0,2);
A_transverse.Foot.Summary.Left_max = max(A_transverse.Foot.left,[],2);
A_transverse.Foot.Summary.Left_min = min(A_transverse.Foot.left,[],2);
    %Right
A_sagittal.Foot.Summary.Right_mean = mean(A_sagittal.Foot.right,2);
A_sagittal.Foot.Summary.Right_sd = std(A_sagittal.Foot.right,0,2);
A_sagittal.Foot.Summary.Right_max = max(A_sagittal.Foot.right,[],2);
A_sagittal.Foot.Summary.Right_min = min(A_sagittal.Foot.right,[],2);
A_frontal.Foot.Summary.Right_mean = mean(A_frontal.Foot.right,2);
A_frontal.Foot.Summary.Right_sd = std(A_frontal.Foot.right,0,2);
A_frontal.Foot.Summary.Right_max = max(A_frontal.Foot.right,[],2);
A_frontal.Foot.Summary.Right_min = min(A_frontal.Foot.right,[],2);
A_transverse.Foot.Summary.Right_mean = mean(A_transverse.Foot.right,2);
A_transverse.Foot.Summary.Right_sd = std(A_transverse.Foot.right,0,2);
A_transverse.Foot.Summary.Right_max = max(A_transverse.Foot.right,[],2);
A_transverse.Foot.Summary.Right_min = min(A_transverse.Foot.right,[],2);
    %Global
A_sagittal.Foot.Summary.Global_mean = mean([A_sagittal.Foot.left,A_sagittal.Foot.right],2);
A_sagittal.Foot.Summary.Global_sd = std([A_sagittal.Foot.left,A_sagittal.Foot.right],0,2);
A_sagittal.Foot.Summary.Global_max = max([A_sagittal.Foot.left,A_sagittal.Foot.right],[],2);
A_sagittal.Foot.Summary.Global_min = min([A_sagittal.Foot.left,A_sagittal.Foot.right],[],2);
A_frontal.Foot.Summary.Global_mean = mean([A_frontal.Foot.left,A_frontal.Foot.right],2);
A_frontal.Foot.Summary.Global_sd = std([A_frontal.Foot.left,A_frontal.Foot.right],0,2);
A_frontal.Foot.Summary.Global_max = max([A_frontal.Foot.left,A_frontal.Foot.right],[],2);
A_frontal.Foot.Summary.Global_min = min([A_frontal.Foot.left,A_frontal.Foot.right],[],2);
A_transverse.Foot.Summary.Global_mean = mean([A_transverse.Foot.left,A_transverse.Foot.right],2);
A_transverse.Foot.Summary.Global_sd = std([A_transverse.Foot.left,A_transverse.Foot.right],0,2);
A_transverse.Foot.Summary.Global_max = max([A_transverse.Foot.left,A_transverse.Foot.right],[],2);
A_transverse.Foot.Summary.Global_min = min([A_transverse.Foot.left,A_transverse.Foot.right],[],2);

object.Subject(i).Angle.Sagittal = A_sagittal;
object.Subject(i).Angle.Frontal = A_frontal;
object.Subject(i).Angle.Transverse = A_transverse;

%% Moment_summary
M_sagittal = object.Subject(i).Moment.Sagittal;
M_frontal = object.Subject(i).Moment.Frontal;
M_transverse = object.Subject(i).Moment.Transverse;

% Hip
    %Left
M_sagittal.Hip.Summary.Left_mean = mean(M_sagittal.Hip.left,2);
M_sagittal.Hip.Summary.Left_sd = std(M_sagittal.Hip.left,0,2);
M_sagittal.Hip.Summary.Left_max = max(M_sagittal.Hip.left,[],2);
M_sagittal.Hip.Summary.Left_min = min(M_sagittal.Hip.left,[],2);
M_frontal.Hip.Summary.Left_mean = mean(M_frontal.Hip.left,2);
M_frontal.Hip.Summary.Left_sd = std(M_frontal.Hip.left,0,2);
M_frontal.Hip.Summary.Left_max = max(M_frontal.Hip.left,[],2);
M_frontal.Hip.Summary.Left_min = min(M_frontal.Hip.left,[],2);
M_transverse.Hip.Summary.Left_mean = mean(M_transverse.Hip.left,2);
M_transverse.Hip.Summary.Left_sd = std(M_transverse.Hip.left,0,2);
M_transverse.Hip.Summary.Left_max = max(M_transverse.Hip.left,[],2);
M_transverse.Hip.Summary.Left_min = min(M_transverse.Hip.left,[],2);
    %Right
M_sagittal.Hip.Summary.Right_mean = mean(M_sagittal.Hip.right,2);
M_sagittal.Hip.Summary.Right_sd = std(M_sagittal.Hip.right,0,2);
M_sagittal.Hip.Summary.Right_max = max(M_sagittal.Hip.right,[],2);
M_sagittal.Hip.Summary.Right_min = min(M_sagittal.Hip.right,[],2);
M_frontal.Hip.Summary.Right_mean = mean(M_frontal.Hip.right,2);
M_frontal.Hip.Summary.Right_sd = std(M_frontal.Hip.right,0,2);
M_frontal.Hip.Summary.Right_max = max(M_frontal.Hip.right,[],2);
M_frontal.Hip.Summary.Right_min = min(M_frontal.Hip.right,[],2);
M_transverse.Hip.Summary.Right_mean = mean(M_transverse.Hip.right,2);
M_transverse.Hip.Summary.Right_sd = std(M_transverse.Hip.right,0,2);
M_transverse.Hip.Summary.Right_max = max(M_transverse.Hip.right,[],2);
M_transverse.Hip.Summary.Right_min = min(M_transverse.Hip.right,[],2);
    %Global
M_sagittal.Hip.Summary.Global_mean = mean([M_sagittal.Hip.left,M_sagittal.Hip.right],2);
M_sagittal.Hip.Summary.Global_sd = std([M_sagittal.Hip.left,M_sagittal.Hip.right],0,2);
M_sagittal.Hip.Summary.Global_max = max([M_sagittal.Hip.left,M_sagittal.Hip.right],[],2);
M_sagittal.Hip.Summary.Global_min = min([M_sagittal.Hip.left,M_sagittal.Hip.right],[],2);
M_frontal.Hip.Summary.Global_mean = mean([M_frontal.Hip.left,M_frontal.Hip.right],2);
M_frontal.Hip.Summary.Global_sd = std([M_frontal.Hip.left,M_frontal.Hip.right],0,2);
M_frontal.Hip.Summary.Global_max = max([M_frontal.Hip.left,M_frontal.Hip.right],[],2);
M_frontal.Hip.Summary.Global_min = min([M_frontal.Hip.left,M_frontal.Hip.right],[],2);
M_transverse.Hip.Summary.Global_mean = mean([M_transverse.Hip.left,M_transverse.Hip.right],2);
M_transverse.Hip.Summary.Global_sd = std([M_transverse.Hip.left,M_transverse.Hip.right],0,2);
M_transverse.Hip.Summary.Global_max = max([M_transverse.Hip.left,M_transverse.Hip.right],[],2);
M_transverse.Hip.Summary.Global_min = min([M_transverse.Hip.left,M_transverse.Hip.right],[],2);

% Knee
    %Left
M_sagittal.Knee.Summary.Left_mean = mean(M_sagittal.Knee.left,2);
M_sagittal.Knee.Summary.Left_sd = std(M_sagittal.Knee.left,0,2);
M_sagittal.Knee.Summary.Left_max = max(M_sagittal.Knee.left,[],2);
M_sagittal.Knee.Summary.Left_min = min(M_sagittal.Knee.left,[],2);
M_frontal.Knee.Summary.Left_mean = mean(M_frontal.Knee.left,2);
M_frontal.Knee.Summary.Left_sd = std(M_frontal.Knee.left,0,2);
M_frontal.Knee.Summary.Left_max = max(M_frontal.Knee.left,[],2);
M_frontal.Knee.Summary.Left_min = min(M_frontal.Knee.left,[],2);
M_transverse.Knee.Summary.Left_mean = mean(M_transverse.Knee.left,2);
M_transverse.Knee.Summary.Left_sd = std(M_transverse.Knee.left,0,2);
M_transverse.Knee.Summary.Left_max = max(M_transverse.Knee.left,[],2);
M_transverse.Knee.Summary.Left_min = min(M_transverse.Knee.left,[],2);
    %Right
M_sagittal.Knee.Summary.Right_mean = mean(M_sagittal.Knee.right,2);
M_sagittal.Knee.Summary.Right_sd = std(M_sagittal.Knee.right,0,2);
M_sagittal.Knee.Summary.Right_max = max(M_sagittal.Knee.right,[],2);
M_sagittal.Knee.Summary.Right_min = min(M_sagittal.Knee.right,[],2);
M_frontal.Knee.Summary.Right_mean = mean(M_frontal.Knee.right,2);
M_frontal.Knee.Summary.Right_sd = std(M_frontal.Knee.right,0,2);
M_frontal.Knee.Summary.Right_max = max(M_frontal.Knee.right,[],2);
M_frontal.Knee.Summary.Right_min = min(M_frontal.Knee.right,[],2);
M_transverse.Knee.Summary.Right_mean = mean(M_transverse.Knee.right,2);
M_transverse.Knee.Summary.Right_sd = std(M_transverse.Knee.right,0,2);
M_transverse.Knee.Summary.Right_max = max(M_transverse.Knee.right,[],2);
M_transverse.Knee.Summary.Right_min = min(M_transverse.Knee.right,[],2);
    %Global
M_sagittal.Knee.Summary.Global_mean = mean([M_sagittal.Knee.left,M_sagittal.Knee.right],2);
M_sagittal.Knee.Summary.Global_sd = std([M_sagittal.Knee.left,M_sagittal.Knee.right],0,2);
M_sagittal.Knee.Summary.Global_max = max([M_sagittal.Knee.left,M_sagittal.Knee.right],[],2);
M_sagittal.Knee.Summary.Global_min = min([M_sagittal.Knee.left,M_sagittal.Knee.right],[],2);
M_frontal.Knee.Summary.Global_mean = mean([M_frontal.Knee.left,M_frontal.Knee.right],2);
M_frontal.Knee.Summary.Global_sd = std([M_frontal.Knee.left,M_frontal.Knee.right],0,2);
M_frontal.Knee.Summary.Global_max = max([M_frontal.Knee.left,M_frontal.Knee.right],[],2);
M_frontal.Knee.Summary.Global_min = min([M_frontal.Knee.left,M_frontal.Knee.right],[],2);
M_transverse.Knee.Summary.Global_mean = mean([M_transverse.Knee.left,M_transverse.Knee.right],2);
M_transverse.Knee.Summary.Global_sd = std([M_transverse.Knee.left,M_transverse.Knee.right],0,2);
M_transverse.Knee.Summary.Global_max = max([M_transverse.Knee.left,M_transverse.Knee.right],[],2);
M_transverse.Knee.Summary.Global_min = min([M_transverse.Knee.left,M_transverse.Knee.right],[],2);

% Ankle
    %Left
M_sagittal.Ankle.Summary.Left_mean = mean(M_sagittal.Ankle.left,2);
M_sagittal.Ankle.Summary.Left_sd = std(M_sagittal.Ankle.left,0,2);
M_sagittal.Ankle.Summary.Left_max = max(M_sagittal.Ankle.left,[],2);
M_sagittal.Ankle.Summary.Left_min = min(M_sagittal.Ankle.left,[],2);
M_frontal.Ankle.Summary.Left_mean = mean(M_frontal.Ankle.left,2);
M_frontal.Ankle.Summary.Left_sd = std(M_frontal.Ankle.left,0,2);
M_frontal.Ankle.Summary.Left_max = max(M_frontal.Ankle.left,[],2);
M_frontal.Ankle.Summary.Left_min = min(M_frontal.Ankle.left,[],2);
M_transverse.Ankle.Summary.Left_mean = mean(M_transverse.Ankle.left,2);
M_transverse.Ankle.Summary.Left_sd = std(M_transverse.Ankle.left,0,2);
M_transverse.Ankle.Summary.Left_max = max(M_transverse.Ankle.left,[],2);
M_transverse.Ankle.Summary.Left_min = min(M_transverse.Ankle.left,[],2);
    %Right
M_sagittal.Ankle.Summary.Right_mean = mean(M_sagittal.Ankle.right,2);
M_sagittal.Ankle.Summary.Right_sd = std(M_sagittal.Ankle.right,0,2);
M_sagittal.Ankle.Summary.Right_max = max(M_sagittal.Ankle.right,[],2);
M_sagittal.Ankle.Summary.Right_min = min(M_sagittal.Ankle.right,[],2);
M_frontal.Ankle.Summary.Right_mean = mean(M_frontal.Ankle.right,2);
M_frontal.Ankle.Summary.Right_sd = std(M_frontal.Ankle.right,0,2);
M_frontal.Ankle.Summary.Right_max = max(M_frontal.Ankle.right,[],2);
M_frontal.Ankle.Summary.Right_min = min(M_frontal.Ankle.right,[],2);
M_transverse.Ankle.Summary.Right_mean = mean(M_transverse.Ankle.right,2);
M_transverse.Ankle.Summary.Right_sd = std(M_transverse.Ankle.right,0,2);
M_transverse.Ankle.Summary.Right_max = max(M_transverse.Ankle.right,[],2);
M_transverse.Ankle.Summary.Right_min = min(M_transverse.Ankle.right,[],2);
    %Global
M_sagittal.Ankle.Summary.Global_mean = mean([M_sagittal.Ankle.left,M_sagittal.Ankle.right],2);
M_sagittal.Ankle.Summary.Global_sd = std([M_sagittal.Ankle.left,M_sagittal.Ankle.right],0,2);
M_sagittal.Ankle.Summary.Global_max = max([M_sagittal.Ankle.left,M_sagittal.Ankle.right],[],2);
M_sagittal.Ankle.Summary.Global_min = min([M_sagittal.Ankle.left,M_sagittal.Ankle.right],[],2);
M_frontal.Ankle.Summary.Global_mean = mean([M_frontal.Ankle.left,M_frontal.Ankle.right],2);
M_frontal.Ankle.Summary.Global_sd = std([M_frontal.Ankle.left,M_frontal.Ankle.right],0,2);
M_frontal.Ankle.Summary.Global_max = max([M_frontal.Ankle.left,M_frontal.Ankle.right],[],2);
M_frontal.Ankle.Summary.Global_min = min([M_frontal.Ankle.left,M_frontal.Ankle.right],[],2);
M_transverse.Ankle.Summary.Global_mean = mean([M_transverse.Ankle.left,M_transverse.Ankle.right],2);
M_transverse.Ankle.Summary.Global_sd = std([M_transverse.Ankle.left,M_transverse.Ankle.right],0,2);
M_transverse.Ankle.Summary.Global_max = max([M_transverse.Ankle.left,M_transverse.Ankle.right],[],2);
M_transverse.Ankle.Summary.Global_min = min([M_transverse.Ankle.left,M_transverse.Ankle.right],[],2);


object.Subject(i).Moment.Sagittal = M_sagittal;
object.Subject(i).Moment.Frontal = M_frontal;
object.Subject(i).Moment.Transverse = M_transverse;
%% Power_summary
Power = object.Subject(i).Power;

% Hip
    %Left
Power.Hip.Summary.Left_mean = mean(Power.Hip.left,2);
Power.Hip.Summary.Left_sd = std(Power.Hip.left,0,2);
Power.Hip.Summary.Left_max = max(Power.Hip.left,[],2);
Power.Hip.Summary.Left_min = min(Power.Hip.left,[],2);
    %Right
Power.Hip.Summary.Right_mean = mean(Power.Hip.right,2);
Power.Hip.Summary.Right_sd = std(Power.Hip.right,0,2);
Power.Hip.Summary.Right_max = max(Power.Hip.right,[],2);
Power.Hip.Summary.Right_min = min(Power.Hip.right,[],2);
    %Global
Power.Hip.Summary.Global_mean = mean([Power.Hip.left,Power.Hip.right],2);
Power.Hip.Summary.Global_sd = std([Power.Hip.left,Power.Hip.right],0,2);
Power.Hip.Summary.Global_max = max([Power.Hip.left,Power.Hip.right],[],2);
Power.Hip.Summary.Global_min = min([Power.Hip.left,Power.Hip.right],[],2);

% Knee
    %Left
Power.Knee.Summary.Left_mean = mean(Power.Knee.left,2);
Power.Knee.Summary.Left_sd = std(Power.Knee.left,0,2);
Power.Knee.Summary.Left_max = max(Power.Knee.left,[],2);
Power.Knee.Summary.Left_min = min(Power.Knee.left,[],2);
    %Right
Power.Knee.Summary.Right_mean = mean(Power.Knee.right,2);
Power.Knee.Summary.Right_sd = std(Power.Knee.right,0,2);
Power.Knee.Summary.Right_max = max(Power.Knee.right,[],2);
Power.Knee.Summary.Right_min = min(Power.Knee.right,[],2);
    %Global
Power.Knee.Summary.Global_mean = mean([Power.Knee.left,Power.Knee.right],2);
Power.Knee.Summary.Global_sd = std([Power.Knee.left,Power.Knee.right],0,2);
Power.Knee.Summary.Global_max = max([Power.Knee.left,Power.Knee.right],[],2);
Power.Knee.Summary.Global_min = min([Power.Knee.left,Power.Knee.right],[],2);

% Ankle
    %Left
Power.Ankle.Summary.Left_mean = mean(Power.Ankle.left,2);
Power.Ankle.Summary.Left_sd = std(Power.Ankle.left,0,2);
Power.Ankle.Summary.Left_max = max(Power.Ankle.left,[],2);
Power.Ankle.Summary.Left_min = min(Power.Ankle.left,[],2);
    %Right
Power.Ankle.Summary.Right_mean = mean(Power.Ankle.right,2);
Power.Ankle.Summary.Right_sd = std(Power.Ankle.right,0,2);
Power.Ankle.Summary.Right_max = max(Power.Ankle.right,[],2);
Power.Ankle.Summary.Right_min = min(Power.Ankle.right,[],2);
    %Global
Power.Ankle.Summary.Global_mean = mean([Power.Ankle.left,Power.Ankle.right],2);
Power.Ankle.Summary.Global_sd = std([Power.Ankle.left,Power.Ankle.right],0,2);
Power.Ankle.Summary.Global_max = max([Power.Ankle.left,Power.Ankle.right],[],2);
Power.Ankle.Summary.Global_min = min([Power.Ankle.left,Power.Ankle.right],[],2);

object.Subject(i).Power = Power;

end