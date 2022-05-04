function [labels] = getlabels(ParameterGroup,GROUP)

% Function returns a string array with the labels of data
% from any group with a "LABELS" parameter.
%
% example plabels = getlabels(ParameterGroup,'POINT')
% example alables = getlabels(ParameterGroup,'ANALOG')

% Michael Schwartz Dec, 2004

% Find blanks
for kk = 1:size(ParameterGroup,2)
    if(isempty(ParameterGroup(kk).name));
        ParameterGroup(kk).name = {'EMPTY'};
    end
end

% Find the group number for GROUP
tmp = [ParameterGroup.name];
nameid = strcmp(tmp,GROUP);

% Find the parameter number for the 'LABELS' parameter
tmp = [ParameterGroup(nameid).Parameter.name];
numid = strcmp(tmp,'LABELS');

% Get the labels
labels = ParameterGroup(nameid).Parameter(numid).data;

