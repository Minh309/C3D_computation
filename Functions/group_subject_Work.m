function [] = group_subject_Work(object,Subject_index,i)
%% Left
if isfield(object.Data(i).WorkFit,'left')
    for j = 1:length(object.Data(i).WorkFit.left.cycle)
        for k = 1:length(object.Data(i).WorkFit.left.cycle(j).data)
            if strncmp(object.Data(i).WorkFit.left.cycle(j).data(k).name,'LHip',4)
                 % Hip 
                object.Subject(Subject_index).Work.Hip.Pos_left = [object.Subject(Subject_index).Work.Hip.Pos_left, object.Data(i).WorkFit.left.cycle(j).data(k).Positive];
                object.Subject(Subject_index).Work.Hip.Neg_left = [object.Subject(Subject_index).Work.Hip.Neg_left, object.Data(i).WorkFit.left.cycle(j).data(k).Negative];
            elseif strncmp(object.Data(i).WorkFit.left.cycle(j).data(k).name,'Lknee',4)
                % Knee
                object.Subject(Subject_index).Work.Knee.Pos_left = [object.Subject(Subject_index).Work.Knee.Pos_left, object.Data(i).WorkFit.left.cycle(j).data(k).Positive];
                object.Subject(Subject_index).Work.Knee.Neg_left = [object.Subject(Subject_index).Work.Knee.Neg_left, object.Data(i).WorkFit.left.cycle(j).data(k).Negative];
            elseif strncmp(object.Data(i).WorkFit.left.cycle(j).data(k).name,'LAnkle',4)
                % Ankle
                object.Subject(Subject_index).Work.Ankle.Pos_left = [object.Subject(Subject_index).Work.Ankle.Pos_left, object.Data(i).WorkFit.left.cycle(j).data(k).Positive];
                object.Subject(Subject_index).Work.Ankle.Neg_left = [object.Subject(Subject_index).Work.Ankle.Neg_left, object.Data(i).WorkFit.left.cycle(j).data(k).Negative];
            end
        end
    end
end
%% Right
if isfield(object.Data(i).WorkFit,'right')
    for j = 1:length(object.Data(i).WorkFit.right.cycle)
        for k = 1:length(object.Data(i).WorkFit.right.cycle(j).data)
            if strncmp(object.Data(i).WorkFit.right.cycle(j).data(k).name,'RHip',4)
                 % Hip 
                object.Subject(Subject_index).Work.Hip.Pos_right = [object.Subject(Subject_index).Work.Hip.Pos_right, object.Data(i).WorkFit.right.cycle(j).data(k).Positive];
                object.Subject(Subject_index).Work.Hip.Neg_right = [object.Subject(Subject_index).Work.Hip.Neg_right, object.Data(i).WorkFit.right.cycle(j).data(k).Negative];
            elseif strncmp(object.Data(i).WorkFit.right.cycle(j).data(k).name,'Rknee',4)
                % Knee
                object.Subject(Subject_index).Work.Knee.Pos_right = [object.Subject(Subject_index).Work.Knee.Pos_right, object.Data(i).WorkFit.right.cycle(j).data(k).Positive];
                object.Subject(Subject_index).Work.Knee.Neg_right = [object.Subject(Subject_index).Work.Knee.Neg_right, object.Data(i).WorkFit.right.cycle(j).data(k).Negative];
            elseif strncmp(object.Data(i).WorkFit.right.cycle(j).data(k).name,'RAnkle',4)
                % Ankle
                object.Subject(Subject_index).Work.Ankle.Pos_right = [object.Subject(Subject_index).Work.Ankle.Pos_right, object.Data(i).WorkFit.right.cycle(j).data(k).Positive];
                object.Subject(Subject_index).Work.Ankle.Neg_right = [object.Subject(Subject_index).Work.Ankle.Neg_right, object.Data(i).WorkFit.right.cycle(j).data(k).Negative];
            end
        end
    end
end            
end