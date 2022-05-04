function [] = group_subject_angle(object,Subject_index,i)

%% Left
if isfield(object.Data(i).AngleFit,'left')
    for j = 1:length(object.Data(i).AngleFit.left.cycle)
        % Thorax
        object.Subject(Subject_index).Angle.Sagittal.Thorax.left = [object.Subject(Subject_index).Angle.Sagittal.Thorax.left object.Data(i).AngleFit.left.cycle(j).data(11).parameter(1,:)'];
        object.Subject(Subject_index).Angle.Frontal.Thorax.left = [object.Subject(Subject_index).Angle.Frontal.Thorax.left object.Data(i).AngleFit.left.cycle(j).data(11).parameter(2,:)'];
        object.Subject(Subject_index).Angle.Transverse.Thorax.left = [object.Subject(Subject_index).Angle.Transverse.Thorax.left object.Data(i).AngleFit.left.cycle(j).data(11).parameter(3,:)'];

        % Pelvis
        object.Subject(Subject_index).Angle.Sagittal.Pelvis.left = [object.Subject(Subject_index).Angle.Sagittal.Pelvis.left object.Data(i).AngleFit.left.cycle(j).data(10).parameter(1,:)'];
        object.Subject(Subject_index).Angle.Frontal.Pelvis.left = [object.Subject(Subject_index).Angle.Frontal.Pelvis.left object.Data(i).AngleFit.left.cycle(j).data(10).parameter(2,:)'];
        object.Subject(Subject_index).Angle.Transverse.Pelvis.left = [object.Subject(Subject_index).Angle.Transverse.Pelvis.left object.Data(i).AngleFit.left.cycle(j).data(10).parameter(3,:)'];

        % Hip 
        object.Subject(Subject_index).Angle.Sagittal.Hip.left = [object.Subject(Subject_index).Angle.Sagittal.Hip.left object.Data(i).AngleFit.left.cycle(j).data(1).parameter(1,:)'];
        object.Subject(Subject_index).Angle.Frontal.Hip.left = [object.Subject(Subject_index).Angle.Frontal.Hip.left object.Data(i).AngleFit.left.cycle(j).data(1).parameter(2,:)'];
        object.Subject(Subject_index).Angle.Transverse.Hip.left = [object.Subject(Subject_index).Angle.Transverse.Hip.left object.Data(i).AngleFit.left.cycle(j).data(1).parameter(3,:)'];  

        % Knee
        object.Subject(Subject_index).Angle.Sagittal.Knee.left = [object.Subject(Subject_index).Angle.Sagittal.Knee.left object.Data(i).AngleFit.left.cycle(j).data(2).parameter(1,:)'];
        object.Subject(Subject_index).Angle.Frontal.Knee.left = [object.Subject(Subject_index).Angle.Frontal.Knee.left object.Data(i).AngleFit.left.cycle(j).data(2).parameter(2,:)'];
        object.Subject(Subject_index).Angle.Transverse.Knee.left = [object.Subject(Subject_index).Angle.Transverse.Knee.left object.Data(i).AngleFit.left.cycle(j).data(2).parameter(3,:)'];

        % Ankle
        object.Subject(Subject_index).Angle.Sagittal.Ankle.left = [object.Subject(Subject_index).Angle.Sagittal.Ankle.left object.Data(i).AngleFit.left.cycle(j).data(3).parameter(1,:)'];
        object.Subject(Subject_index).Angle.Frontal.Ankle.left = [object.Subject(Subject_index).Angle.Frontal.Ankle.left object.Data(i).AngleFit.left.cycle(j).data(3).parameter(2,:)'];
        object.Subject(Subject_index).Angle.Transverse.Ankle.left = [object.Subject(Subject_index).Angle.Transverse.Ankle.left object.Data(i).AngleFit.left.cycle(j).data(3).parameter(3,:)'];

        % Foot
        object.Subject(Subject_index).Angle.Sagittal.Foot.left = [object.Subject(Subject_index).Angle.Sagittal.Foot.left object.Data(i).AngleFit.left.cycle(j).data(9).parameter(1,:)'];
        object.Subject(Subject_index).Angle.Frontal.Foot.left = [object.Subject(Subject_index).Angle.Frontal.Foot.left object.Data(i).AngleFit.left.cycle(j).data(9).parameter(2,:)'];
        object.Subject(Subject_index).Angle.Transverse.Foot.left = [object.Subject(Subject_index).Angle.Transverse.Foot.left object.Data(i).AngleFit.left.cycle(j).data(9).parameter(3,:)'];
    end
end
%% Right
if isfield(object.Data(i).AngleFit,'right')
    for j = 1:length(object.Data(i).AngleFit.right.cycle)
        % Thorax
        object.Subject(Subject_index).Angle.Sagittal.Thorax.right = [object.Subject(Subject_index).Angle.Sagittal.Thorax.right object.Data(i).AngleFit.right.cycle(j).data(11).parameter(1,:)'];
        object.Subject(Subject_index).Angle.Frontal.Thorax.right = [object.Subject(Subject_index).Angle.Frontal.Thorax.right object.Data(i).AngleFit.right.cycle(j).data(11).parameter(2,:)'];
        object.Subject(Subject_index).Angle.Transverse.Thorax.right = [object.Subject(Subject_index).Angle.Transverse.Thorax.right object.Data(i).AngleFit.right.cycle(j).data(11).parameter(3,:)'];

        % Pelvis
        object.Subject(Subject_index).Angle.Sagittal.Pelvis.right = [object.Subject(Subject_index).Angle.Sagittal.Pelvis.right object.Data(i).AngleFit.right.cycle(j).data(10).parameter(1,:)'];
        object.Subject(Subject_index).Angle.Frontal.Pelvis.right = [object.Subject(Subject_index).Angle.Frontal.Pelvis.right object.Data(i).AngleFit.right.cycle(j).data(10).parameter(2,:)'];
        object.Subject(Subject_index).Angle.Transverse.Pelvis.right = [object.Subject(Subject_index).Angle.Transverse.Pelvis.right object.Data(i).AngleFit.right.cycle(j).data(10).parameter(3,:)'];

        % Hip 
        object.Subject(Subject_index).Angle.Sagittal.Hip.right = [object.Subject(Subject_index).Angle.Sagittal.Hip.right object.Data(i).AngleFit.right.cycle(j).data(1).parameter(1,:)'];
        object.Subject(Subject_index).Angle.Frontal.Hip.right = [object.Subject(Subject_index).Angle.Frontal.Hip.right object.Data(i).AngleFit.right.cycle(j).data(1).parameter(2,:)'];
        object.Subject(Subject_index).Angle.Transverse.Hip.right = [object.Subject(Subject_index).Angle.Transverse.Hip.right object.Data(i).AngleFit.right.cycle(j).data(1).parameter(3,:)'];  

        % Knee
        object.Subject(Subject_index).Angle.Sagittal.Knee.right = [object.Subject(Subject_index).Angle.Sagittal.Knee.right object.Data(i).AngleFit.right.cycle(j).data(2).parameter(1,:)'];
        object.Subject(Subject_index).Angle.Frontal.Knee.right = [object.Subject(Subject_index).Angle.Frontal.Knee.right object.Data(i).AngleFit.right.cycle(j).data(2).parameter(2,:)'];
        object.Subject(Subject_index).Angle.Transverse.Knee.right = [object.Subject(Subject_index).Angle.Transverse.Knee.right object.Data(i).AngleFit.right.cycle(j).data(2).parameter(3,:)'];

        % Ankle
        object.Subject(Subject_index).Angle.Sagittal.Ankle.right = [object.Subject(Subject_index).Angle.Sagittal.Ankle.right object.Data(i).AngleFit.right.cycle(j).data(3).parameter(1,:)'];
        object.Subject(Subject_index).Angle.Frontal.Ankle.right = [object.Subject(Subject_index).Angle.Frontal.Ankle.right object.Data(i).AngleFit.right.cycle(j).data(3).parameter(2,:)'];
        object.Subject(Subject_index).Angle.Transverse.Ankle.right = [object.Subject(Subject_index).Angle.Transverse.Ankle.right object.Data(i).AngleFit.right.cycle(j).data(3).parameter(3,:)'];

        % Foot
        object.Subject(Subject_index).Angle.Sagittal.Foot.right = [object.Subject(Subject_index).Angle.Sagittal.Foot.right object.Data(i).AngleFit.right.cycle(j).data(9).parameter(1,:)'];
        object.Subject(Subject_index).Angle.Frontal.Foot.right = [object.Subject(Subject_index).Angle.Frontal.Foot.right object.Data(i).AngleFit.right.cycle(j).data(9).parameter(2,:)'];
        object.Subject(Subject_index).Angle.Transverse.Foot.right = [object.Subject(Subject_index).Angle.Transverse.Foot.right object.Data(i).AngleFit.right.cycle(j).data(9).parameter(3,:)'];
    end
end            
end