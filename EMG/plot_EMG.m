function plot_EMG(ax,dataleft,dataright,subject,muscle_name)
    filtered_left = get_EMG_envelope(dataleft,1000,450,10);
    x_left = linspace(0,100,length(dataleft))';
    filtered_right = get_EMG_envelope(dataright,1000,450,10);
    x_right = linspace(0,100,length(dataright))';
    plot(ax,x_left,filtered_left,'r','LineWidth',1);
    plot(ax,x_right,filtered_right,'g','LineWidth',1);
    xlabel(ax,'% Gait Cycle');
    yticks(ax,[0.5 1])
%     ylabel('[mV]','FontSize',10);
    title(ax,muscle_name);
%     filename = subject + ' ' + muscle_name + '.png';
%     f = gcf;
%     exportgraphics(f,filename,'Resolution',300);
end