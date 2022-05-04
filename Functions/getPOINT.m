function [point] = getPOINT(ParameterGroup,POINTdat,name)

% this function returns the POINT data named 'name'
% example RHipAnglesDJC = getPOINT(ParameterGroup,Markers,'RHipAnglesDJC')
%
% Michael Schwartz, Dec 2004

% Find blanks
for kk = 1:size(ParameterGroup,2)
    if(isempty(ParameterGroup(kk).name));
        ParameterGroup(kk).name = {'EMPTY'};
    end
end

% Find the group number for the 'POINT' group
tmp = [ParameterGroup.name];
nameid = strcmp(tmp,'POINT');

% Find the parameter number for the 'LABELS' parameter
tmp = [ParameterGroup(nameid).Parameter.name];
numid = strcmp(tmp,'LABELS');

% Get the labels
labels = ParameterGroup(nameid).Parameter(numid).data;

% Get the index of 'name' in the list of POINTs
indname = strcmp(labels,name);
indtraj = find(indname);

% Get the Markers data corresponding to this index
point = squeeze(POINTdat(:,indtraj,:));
