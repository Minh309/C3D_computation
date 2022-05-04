function [varargout] = getparam(ParameterGroup,groupstring,paramstring)

% gets the parameter named 'paramstring' from the group 'groupstring'

% example CAMERA_RATE = getparam(ParameterGroup,'TRIAL','CAMERA_RATE')

% Michael Schwartz, Dec21, 2004

% Find blanks
for kk = 1:size(ParameterGroup,2)
    if(isempty(ParameterGroup(kk).name));
        ParameterGroup(kk).name = {'EMPTY'};
    end
end


tmp = [ParameterGroup.name];
groupid = strcmp(tmp,groupstring);
tmp = [ParameterGroup(groupid).Parameter.name];
paramid = strcmp(tmp,paramstring);

% check for non-existant field
if (paramid == 0)
    varargout = {NaN};
else
    varargout = {ParameterGroup(groupid).Parameter(paramid).data};
end
