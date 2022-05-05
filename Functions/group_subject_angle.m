function [] = group_subject_angle(object,Subject_index,i)

%% Left
if isfield(object.Data(i).AngleFit,'left')
    for j = 1:length(object.Data(i).AngleFit.left.cycle)
        for k = 1:length(object.Data(i).AngleFit.left.cycle(j).data)
            if strncmp(object.Data(i).AngleFit.left.cycle(j).data(k).name,'LThorax',4)
                % Thorax
                object.Subject(Subject_index).Angle.Sagittal.Thorax.left = [object.Subject(Subject_index).Angle.Sagittal.Thorax.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Angle.Frontal.Thorax.left = [object.Subject(Subject_index).Angle.Frontal.Thorax.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Angle.Transverse.Thorax.left = [object.Subject(Subject_index).Angle.Transverse.Thorax.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).AngleFit.left.cycle(j).data(k).name,'LPelvis',4)
                % Pelvis
                object.Subject(Subject_index).Angle.Sagittal.Pelvis.left = [object.Subject(Subject_index).Angle.Sagittal.Pelvis.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Angle.Frontal.Pelvis.left = [object.Subject(Subject_index).Angle.Frontal.Pelvis.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Angle.Transverse.Pelvis.left = [object.Subject(Subject_index).Angle.Transverse.Pelvis.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).AngleFit.left.cycle(j).data(k).name,'LHip',4)
                % Hip 
                object.Subject(Subject_index).Angle.Sagittal.Hip.left = [object.Subject(Subject_index).Angle.Sagittal.Hip.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Angle.Frontal.Hip.left = [object.Subject(Subject_index).Angle.Frontal.Hip.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Angle.Transverse.Hip.left = [object.Subject(Subject_index).Angle.Transverse.Hip.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(3,:)'];  
            elseif strncmp(object.Data(i).AngleFit.left.cycle(j).data(k).name,'LKnee',4)
                % Knee
                object.Subject(Subject_index).Angle.Sagittal.Knee.left = [object.Subject(Subject_index).Angle.Sagittal.Knee.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Angle.Frontal.Knee.left = [object.Subject(Subject_index).Angle.Frontal.Knee.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Angle.Transverse.Knee.left = [object.Subject(Subject_index).Angle.Transverse.Knee.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).AngleFit.left.cycle(j).data(k).name,'LAnkle',4)
                % Ankle
                object.Subject(Subject_index).Angle.Sagittal.Ankle.left = [object.Subject(Subject_index).Angle.Sagittal.Ankle.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Angle.Frontal.Ankle.left = [object.Subject(Subject_index).Angle.Frontal.Ankle.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Angle.Transverse.Ankle.left = [object.Subject(Subject_index).Angle.Transverse.Ankle.left, object.Data(i).AngleFit.left.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).AngleFit.left.cycle(j).data(k).name,'LFoot',4)
                % Foot
                object.Subject(Subject_index).Angle.Sagittal.Foot.left = [object.Subject(Subject_index).Angle.Sagittal.Foot.left object.Data(i).AngleFit.left.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Angle.Frontal.Foot.left = [object.Subject(Subject_index).Angle.Frontal.Foot.left object.Data(i).AngleFit.left.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Angle.Transverse.Foot.left = [object.Subject(Subject_index).Angle.Transverse.Foot.left object.Data(i).AngleFit.left.cycle(j).data(k).parameter(3,:)'];
            end
        end
    end
end
%% Right
if isfield(object.Data(i).AngleFit,'right')
    for j = 1:length(object.Data(i).AngleFit.right.cycle)
        for k = 1:length(object.Data(i).AngleFit.right.cycle(j).data)
            if strncmp(object.Data(i).AngleFit.right.cycle(j).data(k).name,'RThorax',4)
                % Thorax
                object.Subject(Subject_index).Angle.Sagittal.Thorax.right = [object.Subject(Subject_index).Angle.Sagittal.Thorax.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Angle.Frontal.Thorax.right = [object.Subject(Subject_index).Angle.Frontal.Thorax.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Angle.Transverse.Thorax.right = [object.Subject(Subject_index).Angle.Transverse.Thorax.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).AngleFit.right.cycle(j).data(k).name,'RPelvis',4)
                % Pelvis
                object.Subject(Subject_index).Angle.Sagittal.Pelvis.right = [object.Subject(Subject_index).Angle.Sagittal.Pelvis.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Angle.Frontal.Pelvis.right = [object.Subject(Subject_index).Angle.Frontal.Pelvis.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Angle.Transverse.Pelvis.right = [object.Subject(Subject_index).Angle.Transverse.Pelvis.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).AngleFit.right.cycle(j).data(k).name,'RHip',4)
                % Hip 
                object.Subject(Subject_index).Angle.Sagittal.Hip.right = [object.Subject(Subject_index).Angle.Sagittal.Hip.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Angle.Frontal.Hip.right = [object.Subject(Subject_index).Angle.Frontal.Hip.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Angle.Transverse.Hip.right = [object.Subject(Subject_index).Angle.Transverse.Hip.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(3,:)'];  
            elseif strncmp(object.Data(i).AngleFit.right.cycle(j).data(k).name,'RKnee',4)
                % Knee
                object.Subject(Subject_index).Angle.Sagittal.Knee.right = [object.Subject(Subject_index).Angle.Sagittal.Knee.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Angle.Frontal.Knee.right = [object.Subject(Subject_index).Angle.Frontal.Knee.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Angle.Transverse.Knee.right = [object.Subject(Subject_index).Angle.Transverse.Knee.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).AngleFit.right.cycle(j).data(k).name,'RAnkle',4)
                % Ankle
                object.Subject(Subject_index).Angle.Sagittal.Ankle.right = [object.Subject(Subject_index).Angle.Sagittal.Ankle.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Angle.Frontal.Ankle.right = [object.Subject(Subject_index).Angle.Frontal.Ankle.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Angle.Transverse.Ankle.right = [object.Subject(Subject_index).Angle.Transverse.Ankle.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).AngleFit.right.cycle(j).data(k).name,'RFoot',4)
                % Foot
                object.Subject(Subject_index).Angle.Sagittal.Foot.right = [object.Subject(Subject_index).Angle.Sagittal.Foot.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Angle.Frontal.Foot.right = [object.Subject(Subject_index).Angle.Frontal.Foot.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Angle.Transverse.Foot.right = [object.Subject(Subject_index).Angle.Transverse.Foot.right object.Data(i).AngleFit.right.cycle(j).data(k).parameter(3,:)'];
            end
        end
    end
end            
end