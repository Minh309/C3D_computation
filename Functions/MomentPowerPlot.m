function [] = MomentPowerPlot(MomentFit,PowerFit,nLcyc,nRcyc,i,LKin,RKin)
%% Definition of Segments, X/Y Labels      
% Labels = ['Parameter' [X axis limits Y axis limits], 'Unit']
Labels = {'Hip Flx/Ext Moment' [0 100 -2 2] 'Nm';
          'Hip Add/Abd Moment' [0 100 -1 1] 'Nm';
          'Hip Int/Ext Moment' [0 100 -1.5 1.5] 'Nm';
          'Hip Power' [0 100 -3 3] 'W';
          'Knee Flx/Ext Moment' [0 100 -1.5 1.5] 'Nm';
          'Knee Valg/Var Moment' [0 100 -1 1] 'Nm';
          'Knee Int/Ext Moment' [0 100 -1.5 1.5] 'Nm';
          'Knee Power' [0 100 -3 3] 'W';
          'Ankle Dor/Pla Moment' [0 100 -1 2] 'Nm';
          'Ankle Power' [0 100 -3 5] 'W'};   
x_axis = 1:100;
if nLcyc > 0
    for c = 1 : nLcyc
        if LKin(c) == 1
            dataM = MomentFit(i).left.cycle(c).data();
            dataP = PowerFit(i).left.cycle(c).data();
            for l = 1:length(dataM)
                if strncmp(dataM(l).name,'LHip',3)
                   for p = 1:3
                       subplot(3,4,p)
                       plot(x_axis,dataM(l).parameter(p,:),'r');
                       axis([Labels{p,2}])
                       title(Labels{p,1})
                       xlabel('% GC')
                       ylabel(Labels{p,3})
                       hold on
                   end
                elseif strncmp(dataM(l).name,'LKnee',3)
                   for p = 1:3
                       subplot(3,4,p+4)
                       plot(x_axis,dataM(l).parameter(p,:),'r');
                       axis([Labels{p+4,2}])
                       title(Labels{p+4,1})
                       xlabel('% GC')
                       ylabel(Labels{p+4,3})
                       hold on
                   end   
                elseif strncmp(dataM(l).name,'LAnkle',3)
                   for p = 1
                       subplot(3,4,9)
                       plot(x_axis,dataM(l).parameter(p,:),'r');
                       axis([Labels{9,2}])
                       title(Labels{9,1})
                       xlabel('% GC')
                       ylabel(Labels{9,3})
                       hold on
                   end 
                end 
            end
            for l = 1:length(dataP)
                if strncmp(dataP(l).name,'LHip',3)
                   for p = 3
                       subplot(3,4,4)
                       plot(x_axis,dataP(l).parameter(p,:),'r');
                       axis([Labels{4,2}])
                       title(Labels{4,1})
                       xlabel('% GC')
                       ylabel(Labels{4,3})
                       hold on
                   end
                elseif strncmp(dataP(l).name,'LKnee',3)
                   for p = 3
                       subplot(3,4,8)
                       plot(x_axis,dataP(l).parameter(p,:),'r');
                       axis([Labels{8,2}])
                       title(Labels{8,1})
                       xlabel('% GC')
                       ylabel(Labels{8,3})
                       hold on
                   end   
                elseif strncmp(dataP(l).name,'LAnkle',3)
                   for p = 3
                       subplot(3,4,12)
                       plot(x_axis,dataP(l).parameter(p,:),'r');
                       axis([Labels{10,2}])
                       title(Labels{10,1})
                       xlabel('% GC')
                       ylabel(Labels{10,3})
                       hold on
                   end 
                end
            end
        end
    end
end
clear dataM dataP
if nRcyc > 0
    for ncyc = 1 : nRcyc
        if RKin(ncyc) == 1
            dataM = MomentFit(i).right.cycle(ncyc).data();
            dataP = PowerFit(i).right.cycle(ncyc).data();
            for l = 1:length(dataM)
                if strncmp(dataM(l).name,'RHip',3)
                   for p = 1:3
                       subplot(3,4,p)
                       plot(x_axis,dataM(l).parameter(p,:),'g');
                       hold on
                   end
                elseif strncmp(dataM(l).name,'RKnee',3)
                   for p = 1:3
                       subplot(3,4,p+4)
                       plot(x_axis,dataM(l).parameter(p,:),'g');
                       hold on
                   end   
                elseif strncmp(dataM(l).name,'RAnkle',3)
                   for p = 1
                       subplot(3,4,9)
                       plot(x_axis,dataM(l).parameter(p,:),'g');
                       hold on
                   end 
                end

            end
            for l = 1:length(dataP)
                if strncmp(dataP(l).name,'RHip',3)
                   for p = 3
                       subplot(3,4,4)
                       plot(x_axis,dataP(l).parameter(p,:),'g');
                       hold on
                   end
                elseif strncmp(dataP(l).name,'RKnee',3)
                   for p = 3
                       subplot(3,4,8)
                       plot(x_axis,dataP(l).parameter(p,:),'g');
                       hold on
                   end   
                elseif strncmp(dataP(l).name,'RAnkle',3)
                   for p = 3
                       subplot(3,4,12)
                       plot(x_axis,dataP(l).parameter(p,:),'g');
                       hold on
                   end 
                end
            end
        end
    end
end
end
