function [] = iSCI_MomentPowerPlot(object,i,CG_Dataset)
%% Definition of Segments, X/Y Labels      
% Labels = ['Parameter' [X axis limits Y axis limits], 'Unit']
Labels = {'Hip Add/Abd Moment' [0 100 -1 1] 'Add      Nm/kg      Abd';
          'Hip Flx/Ext Moment' [0 100 -2 2] 'Flex      Nm/kg      Ext';
          'Hip Rotation Moment' [0 100 -1.5 1.5] 'Int      Nm/kg      Ext';
          'Hip Power' [0 100 -3 3] 'W/kg';
          'Knee Var/Val Moment' [0 100 -1 1] 'Var      Nm/kg      Val';
          'Knee Flx/Ext Moment' [0 100 -1.5 1.5] 'Flex      Nm/kg      Ext';
          'Knee Rotation Moment' [0 100 -1.5 1.5] 'Int      Nm/kg      Ext';
          'Knee Power' [0 100 -3 3] 'W/kg';
          'Ankle Dor/Pla Moment' [0 100 -1 2] 'Dor      Nm/kg      Plan';
          'Ankle Power' [0 100 -3 5] 'W/kg'};    
x_axis = 1:100;
x = [x_axis,fliplr(x_axis)];
%% Setting color palett
red = [0.6353    0.0784    0.1843];
red_shadow = [0.9020    0.7294    0.7608];
green = [0.4667    0.6745    0.1882];
green_shadow = [0.7686    0.8588    0.6431];
grey_shadow = [0.8510    0.8510    0.8510];
%% Control Group reference area
sub = 2*length(object.Subject);
f = figure(i+sub);
f.Position = [10 -20 750  650];
data_F = CG_Dataset.Moment.Frontal;
data_S = CG_Dataset.Moment.Sagittal;
data_T = CG_Dataset.Moment.Transverse;
data_P = CG_Dataset.Power;

idx = 1;
% Hip
    %Frontal
subplot(3,4,idx)
% SD interval and area
up_lim = data_F.Hip.Summary.Global_mean+data_F.Hip.Summary.Global_sd;
low_lim = data_F.Hip.Summary.Global_mean-data_F.Hip.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_F.Hip.Summary.Global_mean,'k');
hold on 
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on
idx = idx +1;
    %Sagittal
subplot(3,4,idx)
% SD interval and area
up_lim = data_S.Hip.Summary.Global_mean+data_S.Hip.Summary.Global_sd;
low_lim = data_S.Hip.Summary.Global_mean-data_S.Hip.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_S.Hip.Summary.Global_mean,'k');
hold on
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on
idx = idx +1;
    %Transverse
subplot(3,4,idx)
% SD interval and area
up_lim = data_T.Hip.Summary.Global_mean+data_T.Hip.Summary.Global_sd;
low_lim = data_T.Hip.Summary.Global_mean-data_T.Hip.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_T.Hip.Summary.Global_mean,'k');
hold on 
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on
idx = idx +1;
    %Power
subplot(3,4,idx)
% SD interval and area
up_lim = data_P.Hip.Summary.Global_mean+data_P.Hip.Summary.Global_sd;
low_lim = data_P.Hip.Summary.Global_mean-data_P.Hip.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_P.Hip.Summary.Global_mean,'k');
hold on 
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on
idx = idx +1;

% Knee
    %Frontal
subplot(3,4,idx)
% SD interval and area
up_lim = data_F.Knee.Summary.Global_mean+data_F.Knee.Summary.Global_sd;
low_lim = data_F.Knee.Summary.Global_mean-data_F.Knee.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_F.Knee.Summary.Global_mean,'k');
hold on 
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on
idx = idx +1;
    %Sagittal
subplot(3,4,idx)
% SD interval and area
up_lim = data_S.Knee.Summary.Global_mean+data_S.Knee.Summary.Global_sd;
low_lim = data_S.Knee.Summary.Global_mean-data_S.Knee.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_S.Knee.Summary.Global_mean,'k');
hold on
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on
idx = idx +1;
    %Transverse
subplot(3,4,idx)
% SD interval and area
up_lim = data_T.Knee.Summary.Global_mean+data_T.Knee.Summary.Global_sd;
low_lim = data_T.Knee.Summary.Global_mean-data_T.Knee.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_T.Knee.Summary.Global_mean,'k');
hold on 
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on
idx = idx +1;
    %Power
subplot(3,4,idx)
% SD interval and area
up_lim = data_P.Knee.Summary.Global_mean+data_P.Knee.Summary.Global_sd;
low_lim = data_P.Knee.Summary.Global_mean-data_P.Knee.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_P.Knee.Summary.Global_mean,'k');
hold on 
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on
idx = idx +1;

% Ankle
    %Sagittal
subplot(3,4,idx+1)
% SD interval and area
up_lim = data_S.Ankle.Summary.Global_mean+data_S.Ankle.Summary.Global_sd;
low_lim = data_S.Ankle.Summary.Global_mean-data_S.Ankle.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_S.Ankle.Summary.Global_mean,'k');
hold on
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on
idx = idx+1;
    %Power
subplot(3,4,idx+2)
% SD interval and area
up_lim = data_P.Ankle.Summary.Global_mean+data_P.Ankle.Summary.Global_sd;
low_lim = data_P.Ankle.Summary.Global_mean-data_P.Ankle.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_P.Ankle.Summary.Global_mean,'k');
hold on
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on

%% Subject Moments Plotting
data_F = object.Subject(i).Moment.Frontal;
data_S = object.Subject(i).Moment.Sagittal;
data_T = object.Subject(i).Moment.Transverse;
data_P = object.Subject(i).Power;

for j = 1:length(data_F.Hip.left(1,:))
        %Hip
    subplot(3,4,1)
    grid on
    plot(x_axis,data_F.Hip.left(:,j),'color',red);
    hold on
    subplot(3,4,2)
    grid on
    plot(x_axis,data_S.Hip.left(:,j),'color',red);
    hold on
    subplot(3,4,3)
    grid on
    plot(x_axis,data_T.Hip.left(:,j),'color',red);
    hold on
    subplot(3,4,4)
    plot(x_axis,data_P.Hip.left(:,j),'color',red);
    hold on
        %Knee
    subplot(3,4,5)
    grid on
    plot(x_axis,data_F.Knee.left(:,j),'color',red);
    hold on
    subplot(3,4,6)
    grid on
    plot(x_axis,data_S.Knee.left(:,j),'color',red);
    hold on
    subplot(3,4,7)
    grid on
    plot(x_axis,data_T.Knee.left(:,j),'color',red);
    hold on
    subplot(3,4,8)
    plot(x_axis,data_P.Knee.left(:,j),'color',red);
    hold on
        %Ankle
    subplot(3,4,10)
    grid on
    plot(x_axis,data_S.Ankle.left(:,j),'color',red);
    hold on
    subplot(3,4,12)
    plot(x_axis,data_P.Ankle.left(:,j),'color',red)
    hold on
end

for j = 1:length(data_F.Hip.right(1,:))
        %Hip
    subplot(3,4,1)
    grid on
    plot(x_axis,data_F.Hip.right(:,j),'color',green);
    hold on
    subplot(3,4,2)
    grid on
    plot(x_axis,data_S.Hip.right(:,j),'color',green);
    hold on
    subplot(3,4,3)
    grid on
    plot(x_axis,data_T.Hip.right(:,j),'color',green);
    hold on
    subplot(3,4,4)
    plot(x_axis,data_P.Hip.right(:,j),'color',green);
    hold on
        %Knee
    subplot(3,4,5)
    grid on
    plot(x_axis,data_F.Knee.right(:,j),'color',green);
    hold on
    subplot(3,4,6)
    grid on
    plot(x_axis,data_S.Knee.right(:,j),'color',green);
    hold on
    subplot(3,4,7)
    grid on
    plot(x_axis,data_T.Knee.right(:,j),'color',green);
    hold on
    subplot(3,4,8)
    plot(x_axis,data_P.Knee.right(:,j),'color',green);
    hold on
        %Ankle
    subplot(3,4,10)
    grid on
    plot(x_axis,data_S.Ankle.right(:,j),'color',green);
    hold on
    subplot(3,4,12)
    plot(x_axis,data_P.Ankle.right(:,j),'color',green)
    hold on
end

sgtitle(sprintf('%s : Kinetics - Moments and Power', object.Subject(i).name)) 
end