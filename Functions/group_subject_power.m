function [] = group_subject_power(object,Subject_index,i)
%% Left
if isfield(object.Data(i).PowerFit,'left')
    for j = 1:length(object.Data(i).PowerFit.left.cycle)
         % Hip 
        object.Subject(Subject_index).Power.Hip.left = [object.Subject(Subject_index).Power.Hip.left object.Data(i).PowerFit.left.cycle(j).data(1).parameter(3,:)'];

        % Knee
        object.Subject(Subject_index).Power.Knee.left = [object.Subject(Subject_index).Power.Knee.left object.Data(i).MomentFit.left.cycle(j).data(2).parameter(3,:)'];

        % Ankle
        object.Subject(Subject_index).Power.Ankle.left = [object.Subject(Subject_index).Power.Ankle.left object.Data(i).MomentFit.left.cycle(j).data(3).parameter(3,:)'];  
    end
end
%% Right
if isfield(object.Data(i).PowerFit,'right')
    for j = 1:length(object.Data(i).PowerFit.right.cycle)
         % Hip 
        object.Subject(Subject_index).Power.Hip.right = [object.Subject(Subject_index).Power.Hip.right object.Data(i).PowerFit.right.cycle(j).data(1).parameter(3,:)'];

        % Knee
        object.Subject(Subject_index).Power.Knee.right = [object.Subject(Subject_index).Power.Knee.right object.Data(i).MomentFit.right.cycle(j).data(2).parameter(3,:)'];

        % Ankle
        object.Subject(Subject_index).Power.Ankle.right = [object.Subject(Subject_index).Power.Ankle.right object.Data(i).MomentFit.right.cycle(j).data(3).parameter(3,:)'];  
    end
end            
end