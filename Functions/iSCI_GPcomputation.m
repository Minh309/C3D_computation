function [] = iSCI_GPcomputation(object,i)

object.Subject(i).GP = [];
GPa = object.Subject(i).GP.Angle;
GPm = object.Subject(i).GP.Moment;
GPp = object.Subject(i).GP.Power;

%
for j = 1:length(object.Subject(i).Sagittal.Thorax.left(1,:))
    %Angle
        %Thorax
    GPa.Sagittal.Thorax.Lmax = max (object.Subject(i).Sagittal.Thorax.left(:,j));
    GPa.Sagittal.Thorax.Lmax_t = find(object.Subject(i).Sagittal.Thorax.left(:,j)==GPa.Sagittal.Thorax.Lmax);
    GPa.Sagittal.Thorax.Lmin = min (object.Subject(i).Sagittal.Thorax.left(:,j));
    GPa.Sagittal.Thorax.Lmin_t = find(object.Subject(i).Sagittal.Thorax.left(:,j)==GPa.Sagittal.Thorax.Lmin);
    GPa.Sagittal.Thorax.Lrange = GPa.Sagittal.Thorax.Lmax - GPa.Sagittal.Thorax.Lmin;
    GPa.Sagittal.Thorax.Lmean = mean (object.Subject(i).Sagittal.Thorax.left(:,j));
    
    GPa.Frontal.Thorax.Lmax = max (object.Subject(i).Frontal.Thorax.left(:,j));
    GPa.Frontal.Thorax.Lmax_t = find(object.Subject(i).Frontal.Thorax.left(:,j)==GPa.Frontal.Thorax.Lmax);
    GPa.Frontal.Thorax.Lmin = min (object.Subject(i).Frontal.Thorax.left(:,j));
    GPa.Frontal.Thorax.Lmin_t = find(object.Subject(i).Frontal.Thorax.left(:,j)==GPa.Frontal.Thorax.Lmin);
    GPa.Frontal.Thorax.Lrange = GPa.Frontal.Thorax.Lmax - GPa.Frontal.Thorax.Lmin;
    GPa.Frontal.Thorax.Lmean = mean (object.Subject(i).Frontal.Thorax.left(:,j));
    
    GPa.Transverse.Thorax.Lmax = max (object.Subject(i).Transverse.Thorax.left(:,j));
    GPa.Transverse.Thorax.Lmax_t = find(object.Subject(i).Transverse.Thorax.left(:,j)==GPa.Transverse.Thorax.Lmax);
    GPa.Transverse.Thorax.Lmin = min (object.Subject(i).Transverse.Thorax.left(:,j));
    GPa.Transverse.Thorax.Lmin_t = find(object.Subject(i).Transverse.Thorax.left(:,j)==GPa.Transverse.Thorax.Lmin);
    GPa.Transverse.Thorax.Lrange = GPa.Transverse.Thorax.Lmax - GPa.Transverse.Thorax.Lmin;
    GPa.Transverse.Thorax.Lmean = mean (object.Subject(i).Transverse.Thorax.left(:,j));
    
        %Pelvis
    GPa.Sagittal.Pelvis.Lmax = max (object.Subject(i).Sagittal.Pelvis.left(:,j));
    GPa.Sagittal.Pelvis.Lmax_t = find(object.Subject(i).Sagittal.Pelvis.left(:,j)==GPa.Sagittal.Pelvis.Lmax);
    GPa.Sagittal.Pelvis.Lmin = min (object.Subject(i).Sagittal.Pelvis.left(:,j));
    GPa.Sagittal.Pelvis.Lmin_t = find(object.Subject(i).Sagittal.Pelvis.left(:,j)==GPa.Sagittal.Pelvis.Lmin);
    GPa.Sagittal.Pelvis.Lrange = GPa.Sagittal.Pelvis.Lmax - GPa.Sagittal.Pelvis.Lmin;
    GPa.Sagittal.Pelvis.Lmean = mean (object.Subject(i).Sagittal.Pelvis.left(:,j));
    
    GPa.Frontal.Pelvis.Lmax = max (object.Subject(i).Frontal.Pelvis.left(:,j));
    GPa.Frontal.Pelvis.Lmax_t = find(object.Subject(i).Frontal.Pelvis.left(:,j)==GPa.Frontal.Pelvis.Lmax);
    GPa.Frontal.Pelvis.Lmax_stance = max (object.Subject(i).Frontal.Pelvis.left(1:59,j));
    GPa.Frontal.Pelvis.Lmax_stance_t = find(object.Subject(i).Frontal.Pelvis.left(1:59,j)==GPa.Frontal.Pelvis.Lmax_stance);
    GPa.Frontal.Pelvis.Lmax_swing = max (object.Subject(i).Frontal.Pelvis.left(60:100,j));
    GPa.Frontal.Pelvis.Lmax_swing_t = find(object.Subject(i).Frontal.Pelvis.left(60:100,j)==GPa.Frontal.Pelvis.Lmax_swing);
    GPa.Frontal.Pelvis.Lmin = min (object.Subject(i).Frontal.Pelvis.left(:,j));
    GPa.Frontal.Pelvis.Lmin_t = find(object.Subject(i).Frontal.Pelvis.left(:,j)==GPa.Frontal.Pelvis.Lmin);
    GPa.Frontal.Pelvis.Lrange = GPa.Frontal.Pelvis.Lmax - GPa.Frontal.Pelvis.Lmin;
    GPa.Frontal.Pelvis.Lmean = mean (object.Subject(i).Frontal.Pelvis.left(:,j));
    GPa.Frontal.Pelvis.Lmean_swing = mean(object.Subject(i).Frontal.Pelvis.left(60:100,j));
    
    GPa.Transverse.Pelvis.Lmax = max (object.Subject(i).Transverse.Pelvis.left(:,j));
    GPa.Transverse.Pelvis.Lmax_t = find(object.Subject(i).Transverse.Pelvis.left(:,j)==GPa.Transverse.Pelvis.Lmax);
    GPa.Transverse.Pelvis.Lmin = min (object.Subject(i).Transverse.Pelvis.left(:,j));
    GPa.Transverse.Pelvis.Lmin_t = find(object.Subject(i).Transverse.Pelvis.left(:,j)==GPa.Transverse.Pelvis.Lmin);
    GPa.Transverse.Pelvis.Lrange = GPa.Transverse.Pelvis.Lmax - GPa.Transverse.Pelvis.Lmin;
    GPa.Transverse.Pelvis.Lmean = mean(object.Subject(i).Transverse.Pelvis.left(:,j));
    
        %Hip
    GPa.Sagittal.Hip.Lmax = max (object.Subject(i).Sagittal.Hip.left(:,j));
    GPa.Sagittal.Hip.Lmax_t = find(object.Subject(i).Sagittal.Hip.left(:,j)==GPa.Sagittal.Hip.Lmax);
    GPa.Sagittal.Hip.Lmax_swing = max (object.Subject(i).Sagittal.Hip.left(50:100,j));
    GPa.Sagittal.Hip.Lmax_swing_t = find(object.Subject(i).Sagittal.Hip.left(50:100,j)==GPa.Sagittal.Hip.Lmax_swing);
    GPa.Sagittal.Hip.Lmin = min (object.Subject(i).Sagittal.Hip.left(:,j));
    GPa.Sagittal.Hip.Lmin_t = find(object.Subject(i).Sagittal.Hip.left(:,j)==GPa.Sagittal.Hip.Lmin);
    GPa.Sagittal.Hip.Lrange = GPa.Sagittal.Hip.Lmax - GPa.Sagittal.Hip.Lmin;
    GPa.Sagittal.Hip.Lmean = mean (object.Subject(i).Sagittal.Hip.left(:,j));
    
    GPa.Frontal.Hip.Lmax = max (object.Subject(i).Frontal.Hip.left(:,j));
    GPa.Frontal.Hip.Lmax_t = find(object.Subject(i).Frontal.Hip.left(:,j)==GPa.Frontal.Hip.Lmax);
    GPa.Frontal.Hip.Lmin = min (object.Subject(i).Frontal.Hip.left(:,j));
    GPa.Frontal.Hip.Lmin_t = find(object.Subject(i).Frontal.Hip.left(:,j)==GPa.Frontal.Hip.Lmin);
    GPa.Frontal.Hip.Lrange = GPa.Frontal.Hip.Lmax - GPa.Frontal.Hip.Lmin;
    GPa.Frontal.Hip.Lmean = mean(object.Subject(i).Frontal.Hip.left(:,j));
    
    GPa.Transverse.Hip.Lmax = max (object.Subject(i).Transverse.Hip.left(:,j));
    GPa.Transverse.Hip.Lmax_t = find(object.Subject(i).Transverse.Hip.left(:,j)==GPa.Transverse.Hip.Lmax);
    GPa.Transverse.Hip.Lmin = min (object.Subject(i).Transverse.Hip.left(:,j));
    GPa.Transverse.Hip.Lmin_t = find(object.Subject(i).Transverse.Hip.left(:,j)==GPa.Transverse.Hip.Lmin);
    GPa.Transverse.Hip.Lrange = GPa.Transverse.Hip.Lmax - GPa.Transverse.Hip.Lmin;
    GPa.Transverse.Hip.Lmean = mean (object.Subject(i).Transverse.Hip.left(:,j));
    GPa.Transverse.Hip.Lmean_swing = mean (object.Subject(i).Transverse.Hip.left(60:100,j));
    
        %Knee
    GPa.Sagittal.Knee.Lmax = max (object.Subject(i).Sagittal.Knee.left(:,j));
    GPa.Sagittal.Knee.Lmax_t = find(object.Subject(i).Sagittal.Knee.left(:,j)==GPa.Sagittal.Knee.Lmax);
    GPa.Sagittal.Knee.Lmax_swing = max (object.Subject(i).Sagittal.Knee.left(50:100,j));
    GPa.Sagittal.Knee.Lmax_swing_t = find(object.Subject(i).Sagittal.Knee.left(50:100,j)==GPa.Sagittal.Knee.Lmax_swing);
    GPa.Sagittal.Knee.Lmax_inCont = max (object.Subject(i).Sagittal.Knee.left(50:100,j));
    GPa.Sagittal.Knee.Lmax_inCont_t = find(object.Subject(i).Sagittal.Knee.left(50:100,j)==GPa.Sagittal.Knee.Lmax_inCont);
    GPa.Sagittal.Knee.Lmin = min (object.Subject(i).Sagittal.Knee.left(:,j));
    GPa.Sagittal.Knee.Lmin_t = find(object.Subject(i).Sagittal.Knee.left(:,j)==GPa.Sagittal.Knee.Lmin);
    GPa.Sagittal.Knee.Lmin_inCont = min (object.Subject(i).Sagittal.Knee.left(1:20,j));
    GPa.Sagittal.Knee.Lmin_inCont_t = find(object.Subject(i).Sagittal.Knee.left(1:20,j)==GPa.Sagittal.Knee.Lmin_inCont);
    GPa.Sagittal.Knee.Lrange = GPa.Sagittal.Knee.Lmax - GPa.Sagittal.Knee.Lmin;
    GPa.Sagittal.Knee.Lmean = mean (object.Subject(i).Sagittal.Knee.left(:,j));
    
    
    
end