function [event,numevt] = EventDefinition(ParameterGroup,VideoFrameRate)
% this function returns the EVENT data as a structure event.contex, .label, .time_in_seconds, .frame
% as well as the number of events
% example event,numevt = getEVENT(ParameterGroup). The events are chronologically
% sorted (earliest to latest).
%
% Michael Schwartz, Dec 2004
% Find blanks
for kk = 1:size(ParameterGroup,2)
    if(isempty(ParameterGroup(kk).name))
        ParameterGroup(kk).name = {'EMPTY'};
    end
end
% Find the group number for the 'EVENT' group
tmp = [ParameterGroup.name];
nameid = strcmp(tmp,'EVENT');
% If there are no EVENTs then return
if(isempty(find(nameid, 1)))
    event = NaN;
    numevt = 0;
    return
end
% Find the parameter number for the 'CONTEXT' parameter
tmp = [ParameterGroup(nameid).Parameter.name];
numid = strcmp(tmp,'CONTEXTS');
% Get the CONTEXTS
contexts = ParameterGroup(nameid).Parameter(numid).data;
% Find the parameter number for the 'LABELS' parameter
tmp = [ParameterGroup(nameid).Parameter.name];
numid = strcmp(tmp,'LABELS');
% Get the LABELS
labels = ParameterGroup(nameid).Parameter(numid).data;
% Find the parameter number for the 'TIMES' parameter
tmp = [ParameterGroup(nameid).Parameter.name];
numid = strcmp(tmp,'TIMES');
% Get the TIMES
evttimes = ParameterGroup(nameid).Parameter(numid).data;

% Find the number of events
numevt = size(evttimes,2);
if (numevt == 0)
    event(1).time = -99;
    return
end
% Convert times to seconds
for K = 1:numevt
    timessec(K) = evttimes(1,K)*60 + evttimes(2,K);
end
% Find the temporal order of events
[tmp,ii] = sort(timessec);
% Create event cell array {context label time_in_seconds]
for K = 1:numevt
    event(K).context = contexts(ii(K));
    event(K).label = labels(ii(K));
    event(K).time = timessec(ii(K));
    event(K).frame = floor(event(K).time*VideoFrameRate);
end

