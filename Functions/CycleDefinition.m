function [LStart,LEnd,nLcyc,RStart,REnd,nRcyc]= CycleDefinition(numevents,events,HeaderGroup)
% Initialization of Variables
LStart = [];
LEnd = [];
RStart = [];
REnd = [];
nLcyc = 0;
nRcyc = 0;
Lcyccont = {'Left' 'Right' 'Right' 'Left' 'Left'};
Rcyccont = {'Right' 'Left' 'Left' 'Right' 'Right'};
cyclabel = {'Foot Strike' 'Foot Off' 'Foot Strike' 'Foot Off' 'Foot Strike'};
clear Rcycstart Lcycstart;
events = struct2table(events);
events = events(~strcmp(events.context, 'General'),:);
numevents = height(events);
%% Identify Complete Left and Right Cycles
for K = 1:(numevents-4)
    cont = events(K:K+4,'context');        
    label = events(K:(K+4),'label');  
    cont = table2cell(cont);
    label = table2cell(label);
    % Context Test
    Lcont_test = strcmp(cont,Lcyccont');     % left
    Rcont_test = strcmp(cont,Rcyccont');     % right
    % Test Labels
    label_test = strcmp(label,cyclabel');    % test labels
    % Test Labels && Context
    allposL = all(Lcont_test);
    allposR = all(Rcont_test);
    allposlabel = all(label_test);         
    % Assign Cycle Start  
    if allposL
        if allposlabel
            nLcyc = nLcyc + 1;             
            Lcycstart(nLcyc) = K;           
        end
    elseif allposR
        if allposlabel
            nRcyc = nRcyc + 1;
            Rcycstart(nRcyc) = K;
        end
    end
end   
%% Read in FrameOffset
Hsize = size(HeaderGroup);
FrameOffset = 0;
for h = 1:Hsize(2)
    chk = strcmp(HeaderGroup(h).name,'startFrame');
    if chk
        FrameOffset = HeaderGroup(h).data - 1;
    end
end
%% Compute Start and End Frames + Shorten Data by FrameOffSet
for c = 1 : nLcyc %Over all left cycles
    LStart(c) = table2array(events(Lcycstart(c),'frame')) - FrameOffset;
    LEnd(c) = table2array(events(Lcycstart(c)+4,'frame')) - FrameOffset;
end    
for c = 1 : nRcyc %Over all right cycles
    RStart(c) = table2array(events(Rcycstart(c),'frame'))  - FrameOffset;
    REnd(c) = table2array(events(Rcycstart(c)+4,'frame')) - FrameOffset;
end
end