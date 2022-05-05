function []=group_subject_moment(object,Subject_index,i)
%% Left
if isfield(object.Data(i).MomentFit,'left')
    for j = 1:length(object.Data(i).MomentFit.left.cycle)
        for k = 1:length(object.Data(i).MomentFit.left.cycle(j).data)
            if strncmp(object.Data(i).MomentFit.left.cycle(j).data(k).name,'LHip',4)
                 % Hip 
                object.Subject(Subject_index).Moment.Sagittal.Hip.left = [object.Subject(Subject_index).Moment.Sagittal.Hip.left, object.Data(i).MomentFit.left.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Moment.Frontal.Hip.left = [object.Subject(Subject_index).Moment.Frontal.Hip.left, object.Data(i).MomentFit.left.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Moment.Transverse.Hip.left = [object.Subject(Subject_index).Moment.Transverse.Hip.left, object.Data(i).MomentFit.left.cycle(j).data(k).parameter(3,:)'];  
            elseif strncmp(object.Data(i).MomentFit.left.cycle(j).data(k).name,'LKnee',4)
                % Knee
                object.Subject(Subject_index).Moment.Sagittal.Knee.left = [object.Subject(Subject_index).Moment.Sagittal.Knee.left, object.Data(i).MomentFit.left.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Moment.Frontal.Knee.left = [object.Subject(Subject_index).Moment.Frontal.Knee.left, object.Data(i).MomentFit.left.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Moment.Transverse.Knee.left = [object.Subject(Subject_index).Moment.Transverse.Knee.left, object.Data(i).MomentFit.left.cycle(j).data(k).parameter(3,:)];
            elseif strncmp(object.Data(i).MomentFit.left.cycle(j).data(k).name,'LAnkle',4)
                % Ankle
                object.Subject(Subject_index).Moment.Sagittal.Ankle.left = [object.Subject(Subject_index).Moment.Sagittal.Ankle.left, object.Data(i).MomentFit.left.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Moment.Frontal.Ankle.left = [object.Subject(Subject_index).Moment.Frontal.Ankle.left, object.Data(i).MomentFit.left.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Moment.Transverse.Ankle.left = [object.Subject(Subject_index).Moment.Transverse.Ankle.left, object.Data(i).MomentFit.left.cycle(j).data(k).parameter(3,:)'];
            end
        end
    end
end 
%% Right
if isfield(object.Data(i).MomentFit,'right')
    for j = 1:length(object.Data(i).MomentFit.right.cycle)
        for k = 1:length(object.Data(i).MomentFit.right.cycle(j).data)
            if strncmp(object.Data(i).MomentFit.right.cycle(j).data(k).name,'RHip',4)
                 % Hip 
                object.Subject(Subject_index).Moment.Sagittal.Hip.right = [object.Subject(Subject_index).Moment.Sagittal.Hip.right object.Data(i).MomentFit.right.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Moment.Frontal.Hip.right = [object.Subject(Subject_index).Moment.Frontal.Hip.right object.Data(i).MomentFit.right.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Moment.Transverse.Hip.right = [object.Subject(Subject_index).Moment.Transverse.Hip.right object.Data(i).MomentFit.right.cycle(j).data(k).parameter(3,:)'];  
            elseif strncmp(object.Data(i).MomentFit.right.cycle(j).data(k).name,'Rnee',4)
                % Knee
                object.Subject(Subject_index).Moment.Sagittal.Knee.right = [object.Subject(Subject_index).Moment.Sagittal.Knee.right object.Data(i).MomentFit.right.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Moment.Frontal.Knee.right = [object.Subject(Subject_index).Moment.Frontal.Knee.right object.Data(i).MomentFit.right.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Moment.Transverse.Knee.right = [object.Subject(Subject_index).Moment.Transverse.Knee.right object.Data(i).MomentFit.right.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).MomentFit.right.cycle(j).data(k).name,'RAnkle',4)
                % Ankle
                object.Subject(Subject_index).Moment.Sagittal.Ankle.right = [object.Subject(Subject_index).Moment.Sagittal.Ankle.right object.Data(i).MomentFit.right.cycle(j).data(k).parameter(1,:)'];
                object.Subject(Subject_index).Moment.Frontal.Ankle.right = [object.Subject(Subject_index).Moment.Frontal.Ankle.right object.Data(i).MomentFit.right.cycle(j).data(k).parameter(2,:)'];
                object.Subject(Subject_index).Moment.Transverse.Ankle.right = [object.Subject(Subject_index).Moment.Transverse.Ankle.right object.Data(i).MomentFit.right.cycle(j).data(k).parameter(3,:)'];
            end
        end
    end
end 
end