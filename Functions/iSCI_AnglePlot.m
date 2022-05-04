function [] = iSCI_AnglePlot(object,i,CG_Dataset)
%% Definition of Segments, X/Y Labels and X/Y Ranges  
% Labels = ['Parameter' [X axis limits Y axis limits], 'Unit']
Labels = {'Trunk Obliquity' [0 100 -10 10] 'Ext      deg      Flex';
          'Trunk Tilt' [0 100 -10 10] 'Post      deg      Ant';
          'Trunk Rotation' [0 100 -20 20] 'Ext      deg      Int';
          'Pelvic Obliquity' [0 100 -20 20] 'Ext      deg      Flex';
          'Pelvic Tilt' [0 100 -30 30] 'Post      deg      Ant';
          'Pelvic Rotation' [0 100 -30 30] 'Ext      deg      Int';
          'Hip Adduction' [0 100 -20 20] 'Abd      deg      Add';
          'Hip Flxion' [0 100 -20 60] 'Ext      deg      Flex';
          'Hip Rotation' [0 100 -20 40] 'Ext      deg      Int';
          'Knee Adduction' [0 100 -30 30] 'Abd      deg      Add';
          'Knee Flxion' [0 100 -20 90] 'Ext      deg      Flex';
          'Knee Rotation' [0 100 -30 40] 'Ext      deg      Int';
          'Ankle Dorsiflexion' [0 100 -30 30] 'Plan      deg      Dors';
          'Foot Progression' [0 100 -40 40] 'Ext      deg      Int'};    
x_axis = 1:100; %Set x-axis
x = [x_axis,fliplr(x_axis)];
%% Setting color palett
red = [0.6353    0.0784    0.1843];
red_shadow = [0.9020    0.7294    0.7608];
green = [0.4667    0.6745    0.1882];
green_shadow = [0.7686    0.8588    0.6431];
grey_shadow = [0.8510    0.8510    0.8510];
%% Control Group reference area
f = figure(i);
f.Position(3:4) = [750  1000];
data_F = CG_Dataset.Angle.Frontal;
data_S = CG_Dataset.Angle.Sagittal;
data_T = CG_Dataset.Angle.Transverse;

idx = 1;
% Thorax
    %Frontal
subplot(5,3,idx)
% SD interval and area
up_lim = data_F.Thorax.Summary.Global_mean+data_F.Thorax.Summary.Global_sd;
low_lim = data_F.Thorax.Summary.Global_mean-data_F.Thorax.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_F.Thorax.Summary.Global_mean,'k');
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
subplot(5,3,idx)
up_lim =data_S.Thorax.Summary.Global_mean+data_S.Thorax.Summary.Global_sd;
low_lim = data_S.Thorax.Summary.Global_mean-data_S.Thorax.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
plot(x_axis,data_S.Thorax.Summary.Global_mean,'k');
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
subplot(5,3,idx)
up_lim = data_T.Thorax.Summary.Global_mean+data_T.Thorax.Summary.Global_sd;
low_lim = data_T.Thorax.Summary.Global_mean-data_T.Thorax.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
plot(x_axis,data_T.Thorax.Summary.Global_mean,'k');
hold on 
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on
idx = idx +1;

% Pelvis
    %Frontal
subplot(5,3,idx)
up_lim = data_F.Pelvis.Summary.Global_mean+data_F.Pelvis.Summary.Global_sd;
low_lim = data_F.Pelvis.Summary.Global_mean-data_F.Pelvis.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
plot(x_axis,data_F.Pelvis.Summary.Global_mean,'k');
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
subplot(5,3,idx)
up_lim = data_S.Pelvis.Summary.Global_mean+data_S.Pelvis.Summary.Global_sd;
low_lim = data_S.Pelvis.Summary.Global_mean-data_S.Pelvis.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_S.Pelvis.Summary.Global_mean,'k');
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
subplot(5,3,idx)
up_lim = data_T.Pelvis.Summary.Global_mean+data_T.Pelvis.Summary.Global_sd;
low_lim = data_T.Pelvis.Summary.Global_mean-data_T.Pelvis.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_T.Pelvis.Summary.Global_mean,'k');
hold on 
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on
idx = idx +1;

% Hip
    %Frontal
subplot(5,3,idx)
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
subplot(5,3,idx)
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
subplot(5,3,idx)
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

% Knee
    %Frontal
subplot(5,3,idx)
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
subplot(5,3,idx)
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
subplot(5,3,idx)
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

% Ankle
    %Sagittal
subplot(5,3,idx+1)
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
idx = idx +1;

% Foot
    %Transverse
subplot(5,3,idx+1)
% SD interval and area
up_lim = data_T.Foot.Summary.Global_mean+data_T.Foot.Summary.Global_sd;
low_lim = data_T.Foot.Summary.Global_mean-data_T.Foot.Summary.Global_sd;
between = [up_lim',fliplr(low_lim')];
fill (x, between, grey_shadow)
grid on
hold on
% Mean curve
plot(x_axis,data_T.Foot.Summary.Global_mean,'k');
hold on 
yline(0)
axis([Labels{idx,2}])
axis('square')
title(Labels{idx,1})
xlabel('% GC')
ylabel(Labels{idx,3})
hold on

clear data_F data_S data_T
%% Subject Left Angles Plotting
data_F = object.Subject(i).Angle.Frontal;
data_S = object.Subject(i).Angle.Sagittal;
data_T = object.Subject(i).Angle.Transverse;

for j = 1:length(data_F.Thorax.left)
        %Thorax
    subplot(5,3,1)
    grid on
    plot(x_axis,data_F.Thorax.left(j),'color',red);
    hold on
    subplot(5,3,2)
    grid on
    plot(x_axis,data_S.Thorax.left(j),'color',red);
    hold on
    subplot(5,3,3)
    grid on
    plot(x_axis,data_T.Thorax.left(j),'color',red);
    hold on
        %Pelvis
    subplot(5,3,4)
    grid on
    plot(x_axis,data_F.Pelvis.left(j),'color',red);
    hold on
    subplot(5,3,5)
    grid on
    plot(x_axis,data_S.Pelvis.left(j),'color',red);
    hold on
    subplot(5,3,6)
    grid on
    plot(x_axis,data_T.Pelvis.left(j),'color',red);
    hold on
        %Hip
    subplot(5,3,7)
    grid on
    plot(x_axis,data_F.Hip.left(j),'color',red);
    hold on
    subplot(5,3,8)
    grid on
    plot(x_axis,data_S.Hip.left(j),'color',red);
    hold on
    subplot(5,3,9)
    grid on
    plot(x_axis,data_T.Hip.left(j),'color',red);
    hold on
        %Knee
    subplot(5,3,10)
    grid on
    plot(x_axis,data_F.Knee.left(j),'color',red);
    hold on
    subplot(5,3,11)
    grid on
    plot(x_axis,data_S.Knee.left(j),'color',red);
    hold on
    subplot(5,3,12)
    grid on
    plot(x_axis,data_T.Knee.left(j),'color',red);
    hold on
        %Ankle
    subplot(5,3,14)
    grid on
    plot(x_axis,data_S.Ankle.left(j),'color',red);
    hold on
        %Foot
    subplot(5,3,15)
    grid on
    plot(x_axis,data_T.Foot.left(j),'color',red);
    hold on
end

for j = 1:length(data_F.Thorax.right)
        %Thorax
    subplot(5,3,1)
    grid on
    plot(x_axis,data_F.Thorax.right(j),'color',red);
    hold on
    subplot(5,3,2)
    grid on
    plot(x_axis,data_S.Thorax.right(j),'color',red);
    hold on
    subplot(5,3,3)
    grid on
    plot(x_axis,data_T.Thorax.right(j),'color',red);
    hold on
        %Pelvis
    subplot(5,3,4)
    grid on
    plot(x_axis,data_F.Pelvis.right(j),'color',red);
    hold on
    subplot(5,3,5)
    grid on
    plot(x_axis,data_S.Pelvis.right(j),'color',red);
    hold on
    subplot(5,3,6)
    grid on
    plot(x_axis,data_T.Pelvis.right(j),'color',red);
    hold on
        %Hip
    subplot(5,3,7)
    grid on
    plot(x_axis,data_F.Hip.right(j),'color',red);
    hold on
    subplot(5,3,8)
    grid on
    plot(x_axis,data_S.Hip.right(j),'color',red);
    hold on
    subplot(5,3,9)
    grid on
    plot(x_axis,data_T.Hip.right(j),'color',red);
    hold on
        %Knee
    subplot(5,3,10)
    grid on
    plot(x_axis,data_F.Knee.right(j),'color',red);
    hold on
    subplot(5,3,11)
    grid on
    plot(x_axis,data_S.Knee.right(j),'color',red);
    hold on
    subplot(5,3,12)
    grid on
    plot(x_axis,data_T.Knee.right(j),'color',red);
    hold on
        %Ankle
    subplot(5,3,14)
    grid on
    plot(x_axis,data_S.Ankle.right(j),'color',red);
    hold on
        %Foot
    subplot(5,3,15)
    grid on
    plot(x_axis,data_T.Foot.right(j),'color',red);
    hold on
end
    

clear data_F data_S data_T

sgtitle(sprintf('%s : Kinematics - Angels trajectories', object.Subject(i).name)) 
end
