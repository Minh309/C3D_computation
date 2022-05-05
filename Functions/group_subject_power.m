function [] = group_subject_power(object,Subject_index,i)
%% Left
if isfield(object.Data(i).PowerFit,'left')
    for j = 1:length(object.Data(i).PowerFit.left.cycle)
        for k = 1:length(object.Data(i).PowerFit.left.cycle(j).data)
            if strncmp(object.Data(i).PowerFit.left.cycle(j).data(k).name,'LHip',4)
                 % Hip 
                object.Subject(Subject_index).Power.Hip.left = [object.Subject(Subject_index).Power.Hip.left, object.Data(i).PowerFit.left.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).PowerFit.left.cycle(j).data(k).name,'Lknee',4)
                % Knee
                object.Subject(Subject_index).Power.Knee.left = [object.Subject(Subject_index).Power.Knee.left, object.Data(i).MomentFit.left.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).PowerFit.left.cycle(j).data(k).name,'LAnkle',4)
                % Ankle
                object.Subject(Subject_index).Power.Ankle.left = [object.Subject(Subject_index).Power.Ankle.left, object.Data(i).MomentFit.left.cycle(j).data(k).parameter(3,:)'];  
            end
        end
    end
end
%% Right
if isfield(object.Data(i).PowerFit,'right')
    for j = 1:length(object.Data(i).PowerFit.right.cycle)
        for k = 1:length(object.Data(i).PowerFit.right.cycle(j).data)
            if strncmp(object.Data(i).PowerFit.right.cycle(j).data(k).name,'RHip',4)
                 % Hip 
                object.Subject(Subject_index).Power.Hip.right = [object.Subject(Subject_index).Power.Hip.right, object.Data(i).PowerFit.right.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).PowerFit.right.cycle(j).data(k).name,'RKnee',4)
                % Knee
                object.Subject(Subject_index).Power.Knee.right = [object.Subject(Subject_index).Power.Knee.right, object.Data(i).MomentFit.right.cycle(j).data(k).parameter(3,:)'];
            elseif strncmp(object.Data(i).PowerFit.right.cycle(j).data(k).name,'RAnkle',4)
                % Ankle
                object.Subject(Subject_index).Power.Ankle.right = [object.Subject(Subject_index).Power.Ankle.right, object.Data(i).MomentFit.right.cycle(j).data(k).parameter(3,:)'];  
            end
        end
    end
end            
end