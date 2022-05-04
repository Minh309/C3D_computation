function [] = AnglePlot(AngleFit,nLcyc,nRcyc,i,LKinem,RKinem)
%% Definition of Segments, X/Y Labels and X/Y Ranges  
% Labels = ['Parameter' [X axis limits Y axis limits], 'Unit']
Labels = {'Trunk Ant/Pst' [0 100 -10 10] 'deg';
          'Trunk LFlx/LExt' [0 100 -10 10] 'deg';
          'Trunk Int/Ext' [0 100 -20 20] 'deg';
          'Pelv Ant/Pst' [0 100 -30 30] 'deg';
          'Pelv Up/Dn' [0 100 -20 20] 'deg';
          'Pelv Int/Ext' [0 100 -30 30] 'deg';
          'Hip Flx/Ext' [0 100 -20 60] 'deg';
          'Hip Add/Abd' [0 100 -20 20] 'deg';
          'Hip Int/Ext' [0 100 -20 40] 'deg';
          'Knee Flx/Ext' [0 100 -20 90] 'deg';
          'Knee Valg/Var' [0 100 -30 30] 'deg';
          'Knee Int/Ext' [0 100 -30 40] 'deg';
          'Ankle Dor/Pla' [0 100 -30 30] 'deg';
          'Foot Int/Ext' [0 100 -40 40] 'deg'};    
x_axis = 1:100; %Set x-axis
%% Left Side Angles Plotting
if nLcyc > 0    %Only if left cycle exists
    for ncyc = 1 : nLcyc    %Loop over all left cycles
    if LKinem(ncyc) == 1    %Plot if kinematic data is good
    data = AngleFit(i).left.cycle(ncyc).data(); %Define data location
    for l = 1:length(data)
        if strncmp(data(l).name,'LThorax',3)
            idx = 1;
           for p = 1:3  %Plot all planes
               subplot(5,3,p)
               plot(x_axis,data(l).parameter(p,:),'r');
               axis([Labels{idx,2}])
               title(Labels{idx,1})
               xlabel('% GC')
               ylabel(Labels{idx,3})
               hold on
               idx = idx +1;
           end
        elseif strncmp(data(l).name,'LPelvis',3)
               idx = 4;
               for p = 1:3  %Plot all planes
                   subplot(5,3,p+3)
                   plot(x_axis,data(l).parameter(p,:),'r');
                   axis([Labels{idx,2}])
                   title(Labels{idx,1})
                   xlabel('% GC')
                   ylabel(Labels{idx,3})
                   hold on
                   idx = idx +1;
               end   
        elseif strncmp(data(l).name,'LHip',3)
               idx = 7;
               for p = 1:3  %Plot all planes
                   subplot(5,3,p+6)
                   plot(x_axis,data(l).parameter(p,:),'r');
                   axis([Labels{idx,2}])
                   title(Labels{idx,1})
                   xlabel('% GC')
                   ylabel(Labels{idx,3})
                   hold on
                   idx = idx +1;
               end   
        elseif strncmp(data(l).name,'LKnee',3)
               idx = 10;
               for p = 1:2  %Plot only sagital and frontal plane
                   subplot(5,3,p+9)
                   plot(x_axis,data(l).parameter(p,:),'r');
                   axis([Labels{idx,2}])
                   title(Labels{idx,1})
                   xlabel('% GC')
                   ylabel(Labels{idx,3})
                   hold on
                   idx = idx +1;
               end 
        elseif strncmp(data(l).name,'LAnkle',3)
               idx = 13;
               for p = 1    %Plot only sagital plane
                   subplot(5,3,13)
                   plot(x_axis,data(l).parameter(p,:),'r');
                   axis([Labels{idx,2}])
                   title(Labels{idx,1})
                   xlabel('% GC')
                   ylabel(Labels{idx,3})
                   hold on
                   idx = idx +1;
               end 
        elseif strncmp(data(l).name,'LFoot',3)
               idx = 14;
               for p = 3    %Plot only transverse plane
                   subplot(5,3,15)
                   plot(x_axis,data(l).parameter(p,:),'r');
                   axis([Labels{idx,2}])
                   title(Labels{idx,1})
                   xlabel('% GC')
                   ylabel(Labels{idx,3})
                   hold on
               end                
        end
    end
    end
    end
end
%% Right Side Angles Plotting
if nRcyc > 0    %Only if right cycle exists
    for ncyc = 1 : nRcyc    %Loop over all right cycles
    if RKinem(ncyc) == 1    %Plot if kinematic data is good
    data = AngleFit(i).right.cycle(ncyc).data(); %Define data location
    for l = 1:length(data)
        if strncmp(data(l).name,'RThorax',3)
            idx = 1;
           for p = 1:3  %Plot all planes
               subplot(5,3,p)
               plot(x_axis,data(l).parameter(p,:),'g');
               axis([Labels{idx,2}])
               title(Labels{idx,1})
               xlabel('% GC')
               ylabel(Labels{idx,3})
               hold on
               idx = idx +1;
           end
        elseif strncmp(data(l).name,'RPelvis',3)
               idx = 4;
               for p = 1:3  %Plot all planes
                   subplot(5,3,p+3)
                   plot(x_axis,data(l).parameter(p,:),'g');
                   axis([Labels{idx,2}])
                   title(Labels{idx,1})
                   xlabel('% GC')
                   ylabel(Labels{idx,3})
                   hold on
                   idx = idx +1;
               end   
        elseif strncmp(data(l).name,'RHip',3)
               idx = 7;
               for p = 1:3  %Plot all planes
                   subplot(5,3,p+6)
                   plot(x_axis,data(l).parameter(p,:),'g');
                   axis([Labels{idx,2}])
                   title(Labels{idx,1})
                   xlabel('% GC')
                   ylabel(Labels{idx,3})
                   hold on
                   idx = idx +1;
               end   
        elseif strncmp(data(l).name,'RKnee',3)
               idx = 10;
               for p = 1:2  %Plot only sagital and frontal plane
                   subplot(5,3,p+9)
                   plot(x_axis,data(l).parameter(p,:),'g');
                   axis([Labels{idx,2}])
                   title(Labels{idx,1})
                   xlabel('% GC')
                   ylabel(Labels{idx,3})
                   hold on
                   idx = idx +1;
               end 
        elseif strncmp(data(l).name,'RAnkle',3)
               idx = 13;
               for p = 1    %Plot only sagital plane
                   subplot(5,3,13)
                   plot(x_axis,data(l).parameter(p,:),'g');
                   axis([Labels{idx,2}])
                   title(Labels{idx,1})
                   xlabel('% GC')
                   ylabel(Labels{idx,3})
                   hold on
                   idx = idx +1;
               end 
        elseif strncmp(data(l).name,'RFoot',3)
               idx = 14;
               for p = 3    %Plot only transverse plane
                   subplot(5,3,15)
                   plot(x_axis,data(l).parameter(p,:),'g');
                   axis([Labels{idx,2}])
                   title(Labels{idx,1})
                   xlabel('% GC')
                   ylabel(Labels{idx,3})
                   hold on
               end                
        end
    end
    end
    end
end
end
