function [] = Init_Subjectdata(object,Subject_index)
%% Subject -> Angle/Moment/Power -> Plane -> Joint ->
% left/right
% Thorax
object.Subject(Subject_index).Angle.Sagittal.Thorax.left = [];
object.Subject(Subject_index).Angle.Sagittal.Thorax.right = [];
object.Subject(Subject_index).Angle.Frontal.Thorax.left = [];
object.Subject(Subject_index).Angle.Frontal.Thorax.right = [];
%object.Subject(Subject_index).Angle.Frontal.Thorax.Summary = [];
object.Subject(Subject_index).Angle.Transverse.Thorax.left = [];
object.Subject(Subject_index).Angle.Transverse.Thorax.right = [];
%object.Subject(Subject_index).Angle.Transverse.Thorax.Summary = [];

% Pelvis
object.Subject(Subject_index).Angle.Sagittal.Pelvis.left = [];
object.Subject(Subject_index).Angle.Sagittal.Pelvis.right = [];
object.Subject(Subject_index).Angle.Frontal.Pelvis.left = [];
object.Subject(Subject_index).Angle.Frontal.Pelvis.right = [];
object.Subject(Subject_index).Angle.Transverse.Pelvis.left = [];
object.Subject(Subject_index).Angle.Transverse.Pelvis.right = [];

% Hip
    % Angle
object.Subject(Subject_index).Angle.Sagittal.Hip.left = [];
object.Subject(Subject_index).Angle.Sagittal.Hip.right = [];
object.Subject(Subject_index).Angle.Frontal.Hip.left = [];
object.Subject(Subject_index).Angle.Frontal.Hip.right = [];
object.Subject(Subject_index).Angle.Transverse.Hip.left = [];
object.Subject(Subject_index).Angle.Transverse.Hip.right = [];
    %Moment
object.Subject(Subject_index).Moment.Sagittal.Hip.left = [];
object.Subject(Subject_index).Moment.Sagittal.Hip.right = [];
object.Subject(Subject_index).Moment.Frontal.Hip.left = [];
object.Subject(Subject_index).Moment.Frontal.Hip.right = [];
object.Subject(Subject_index).Moment.Transverse.Hip.left = [];
object.Subject(Subject_index).Moment.Transverse.Hip.right = [];
    %Power
object.Subject(Subject_index).Power.Hip.left = [];
object.Subject(Subject_index).Power.Hip.right = [];
    %Work
object.Subject(Subject_index).Work.Hip.Pos_left = [];
object.Subject(Subject_index).Work.Hip.Pos_right = [];
object.Subject(Subject_index).Work.Hip.Neg_left = [];
object.Subject(Subject_index).Work.Hip.Neg_right = [];

% Knee
    %Angle
object.Subject(Subject_index).Angle.Sagittal.Knee.left = [];
object.Subject(Subject_index).Angle.Sagittal.Knee.right = [];
object.Subject(Subject_index).Angle.Frontal.Knee.left = [];
object.Subject(Subject_index).Angle.Frontal.Knee.right = [];
object.Subject(Subject_index).Angle.Transverse.Knee.left = [];
object.Subject(Subject_index).Angle.Transverse.Knee.right = [];
    %Moment
object.Subject(Subject_index).Moment.Sagittal.Knee.left = [];
object.Subject(Subject_index).Moment.Sagittal.Knee.right = [];
object.Subject(Subject_index).Moment.Frontal.Knee.left = [];
object.Subject(Subject_index).Moment.Frontal.Knee.right = [];
object.Subject(Subject_index).Moment.Transverse.Knee.left = [];
object.Subject(Subject_index).Moment.Transverse.Knee.right = [];   
    % Power
object.Subject(Subject_index).Power.Knee.left = [];
object.Subject(Subject_index).Power.Knee.right = []; 
    %Work
object.Subject(Subject_index).Work.Knee.Pos_left = [];
object.Subject(Subject_index).Work.Knee.Pos_right = [];
object.Subject(Subject_index).Work.Knee.Neg_left = [];
object.Subject(Subject_index).Work.Knee.Neg_right = [];

% Ankle
    %Angle
object.Subject(Subject_index).Angle.Sagittal.Ankle.left = [];
object.Subject(Subject_index).Angle.Sagittal.Ankle.right = [];
object.Subject(Subject_index).Angle.Frontal.Ankle.left = [];
object.Subject(Subject_index).Angle.Frontal.Ankle.right = [];
object.Subject(Subject_index).Angle.Transverse.Ankle.left = [];
object.Subject(Subject_index).Angle.Transverse.Ankle.right = [];
    %Moment
object.Subject(Subject_index).Moment.Sagittal.Ankle.left = [];
object.Subject(Subject_index).Moment.Sagittal.Ankle.right = [];
object.Subject(Subject_index).Moment.Frontal.Ankle.left = [];
object.Subject(Subject_index).Moment.Frontal.Ankle.right = [];
object.Subject(Subject_index).Moment.Transverse.Ankle.left = [];
object.Subject(Subject_index).Moment.Transverse.Ankle.right = [];   
    %Power
object.Subject(Subject_index).Power.Ankle.left = [];
object.Subject(Subject_index).Power.Ankle.right = []; 
    %Work
object.Subject(Subject_index).Work.Ankle.Pos_left = [];
object.Subject(Subject_index).Work.Ankle.Pos_right = [];
object.Subject(Subject_index).Work.Ankle.Neg_left = [];
object.Subject(Subject_index).Work.Ankle.Neg_right = [];

% Foot
object.Subject(Subject_index).Angle.Sagittal.Foot.left = [];
object.Subject(Subject_index).Angle.Sagittal.Foot.right = [];
object.Subject(Subject_index).Angle.Frontal.Foot.left = [];
object.Subject(Subject_index).Angle.Frontal.Foot.right = [];
object.Subject(Subject_index).Angle.Transverse.Foot.left = [];
object.Subject(Subject_index).Angle.Transverse.Foot.right = [];


end