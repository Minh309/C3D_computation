Muscle_name = ["Rectus Femoris" "Vastus Lateralis" "Bicep Femoris" ...
    "Tibialis Anterior" "Soleus" "Gastrocnemius Medialis" "Gastrocnemius Lateralis"...
    "Gluteus Medius" "Gluteus Maximus"];
subjectid = "RSS05";
dataleft = readtable('RSS05_EMG_LEFT.csv');
dataright = readtable('RSS05_EMG_RIGHT.csv');
t = tiledlayout(3,3,"Padding","loose");
title(t,subjectid);
for i = 1:length(Muscle_name)
    left = dataleft.(i);
    right = dataright.(i);
    ax(i) = nexttile(i);
    hold(ax(i),'on');
    grid(ax(i),'on');
    plot_EMG(ax(i),left,right,subjectid,Muscle_name(i));
    hold(ax(i),'off');
end
filename = subjectid + 'EMG.png';
exportgraphics(t,filename,'Resolution',600);