%% Reads in the Point Data of the .c3d File
function [Files] = AnalogDataInread(ParameterGroup,ANALOGdat,Files,kk,datafiles)
nANALOG = size(ANALOGdat,2);
Plabels = getlabels(ParameterGroup,'ANALOG'); 
%% Definition of Indexes for Angles,Moments,Power,Force
i_Ang = 1;
i_Mom = 1;
i_Pow = 1;
i_For = 1;
%% Read in Point Data and Store in Data Structure
for K = 1:nPOINT
    v = char(genvarname(Plabels(K)));
    w = char(Plabels(K));
    eval([v '= getPOINT(ParameterGroup,POINTdat,w);'])
    a = getPOINT(ParameterGroup,POINTdat,w);
    Files(kk).name = datafiles{kk};
    if ~cellfun('isempty',strfind(Plabels(K),'Angle'))
        Files(kk).Data(1).name = 'ANGLES';
        Files(kk).Data(1).data(i_Ang).parameter = a;
        Files(kk).Data(1).data(i_Ang).name = Plabels(K);
        i_Ang = i_Ang + 1;
    elseif ~cellfun('isempty',strfind(Plabels(K),'Mom'))
        Files(kk).Data(2).name = 'MOMENTS';
        Files(kk).Data(2).data(i_Mom).parameter = a;
        Files(kk). Data(2).data(i_Mom).name = Plabels(K);
        i_Mom = i_Mom + 1;
    elseif ~cellfun('isempty',strfind(Plabels(K),'Pow'))
        Files(kk).Data(3).name = 'POWER';
        Files(kk).Data(3).data(i_Pow).parameter = a;
        Files(kk).Data(3).data(i_Pow).name = Plabels(K);
        i_Pow = i_Pow+1;
    elseif ~cellfun('isempty',strfind(Plabels(K),'For'))
        Files(kk).Data(4).name = 'FORCES';
        Files(kk).Data(4).data(i_For).parameter = a;
        Files(kk).Data(4).data(i_For).name = Plabels(K);
        i_For = i_For+1;
    end
end
end