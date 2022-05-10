function [] = iSCI_GPcomputation(object,i)

object.Subject(i).GP.Angle = [];
GPa = object.Subject(i).GP.Angle;
object.Subject(i).GP.Moment = [];
GPm = object.Subject(i).GP.Moment;
object.Subject(i).GP.Power = [];
GPp = object.Subject(i).GP.Power;

%% Left Side
for j = 1:length(object.Subject(i).Angle.Sagittal.Thorax.left(1,:))
    %Angle
        %Thorax
    GPa.Sagittal.Thorax.left.max(j) = max (object.Subject(i).Angle.Sagittal.Thorax.left(:,j));
    GPa.Sagittal.Thorax.left.max_t(j) = find(object.Subject(i).Angle.Sagittal.Thorax.left(:,j)==GPa.Sagittal.Thorax.left.max);
    GPa.Sagittal.Thorax.left.min(j) = min (object.Subject(i).Angle.Sagittal.Thorax.left(:,j));
    GPa.Sagittal.Thorax.left.min_t(j) = find(object.Subject(i).Angle.Sagittal.Thorax.left(:,j)==GPa.Sagittal.Thorax.left.min(j));
    GPa.Sagittal.Thorax.left.range(j) = GPa.Sagittal.Thorax.left.max(j) - GPa.Sagittal.Thorax.left.min(j);
    GPa.Sagittal.Thorax.left.mean(j) = mean (object.Subject(i).Angle.Sagittal.Thorax.left(:,j));
    
    GPa.Frontal.Thorax.left.max(j) = max (object.Subject(i).Angle.Frontal.Thorax.left(:,j));
    GPa.Frontal.Thorax.left.max_t(j) = find(object.Subject(i).Angle.Frontal.Thorax.left(:,j)==GPa.Frontal.Thorax.left.max(j));
    GPa.Frontal.Thorax.left.min(j) = min (object.Subject(i).Angle.Frontal.Thorax.left(:,j));
    GPa.Frontal.Thorax.left.min_t(j) = find(object.Subject(i).Angle.Frontal.Thorax.left(:,j)==GPa.Frontal.Thorax.left.min(j));
    GPa.Frontal.Thorax.left.range(j) = GPa.Frontal.Thorax.left.max(j) - GPa.Frontal.Thorax.left.min(j);
    GPa.Frontal.Thorax.left.mean(j) = mean (object.Subject(i).Angle.Frontal.Thorax.left(:,j));
    
    GPa.Transverse.Thorax.left.max(j) = max (object.Subject(i).Angle.Transverse.Thorax.left(:,j));
    GPa.Transverse.Thorax.left.max_t(j) = find(object.Subject(i).Angle.Transverse.Thorax.left(:,j)==GPa.Transverse.Thorax.left.max(j));
    GPa.Transverse.Thorax.left.min(j) = min (object.Subject(i).Angle.Transverse.Thorax.left(:,j));
    GPa.Transverse.Thorax.left.min_t(j) = find(object.Subject(i).Angle.Transverse.Thorax.left(:,j)==GPa.Transverse.Thorax.left.min(j));
    GPa.Transverse.Thorax.left.range(j) = GPa.Transverse.Thorax.left.max(j) - GPa.Transverse.Thorax.left.min(j);
    GPa.Transverse.Thorax.left.mean(j) = mean (object.Subject(i).Angle.Transverse.Thorax.left(:,j));
    
        %Pelvis
    GPa.Sagittal.Pelvis.left.max(j) = max (object.Subject(i).Angle.Sagittal.Pelvis.left(:,j));
    GPa.Sagittal.Pelvis.left.max_t(j) = find(object.Subject(i).Angle.Sagittal.Pelvis.left(:,j)==GPa.Sagittal.Pelvis.left.max(j));
    GPa.Sagittal.Pelvis.left.min(j) = min (object.Subject(i).Angle.Sagittal.Pelvis.left(:,j));
    GPa.Sagittal.Pelvis.left.min_t(j) = find(object.Subject(i).Angle.Sagittal.Pelvis.left(:,j)==GPa.Sagittal.Pelvis.left.min(j));
    GPa.Sagittal.Pelvis.left.range(j) = GPa.Sagittal.Pelvis.left.max(j) - GPa.Sagittal.Pelvis.left.min(j);
    GPa.Sagittal.Pelvis.left.mean(j) = mean (object.Subject(i).Angle.Sagittal.Pelvis.left(:,j));
    
    GPa.Frontal.Pelvis.left.max(j) = max (object.Subject(i).Angle.Frontal.Pelvis.left(:,j));
    GPa.Frontal.Pelvis.left.max_t(j) = find(object.Subject(i).Angle.Frontal.Pelvis.left(:,j)==GPa.Frontal.Pelvis.left.max);
    GPa.Frontal.Pelvis.left.max_stance(j) = max (object.Subject(i).Angle.Frontal.Pelvis.left(1:59,j));
    GPa.Frontal.Pelvis.left.max_stance_t(j) = find(object.Subject(i).Angle.Frontal.Pelvis.left(1:59,j)==GPa.Frontal.Pelvis.left.max_stance(j));
    GPa.Frontal.Pelvis.left.max_swing(j) = max (object.Subject(i).Angle.Frontal.Pelvis.left(60:100,j));
    GPa.Frontal.Pelvis.left.max_swing_t(j) = find(object.Subject(i).Angle.Frontal.Pelvis.left(60:100,j)==GPa.Frontal.Pelvis.left.max_swing(j));
    GPa.Frontal.Pelvis.left.min(j) = min (object.Subject(i).Angle.Frontal.Pelvis.left(:,j));
    GPa.Frontal.Pelvis.left.min_t(j) = find(object.Subject(i).Angle.Frontal.Pelvis.left(:,j)==GPa.Frontal.Pelvis.left.min(j));
    GPa.Frontal.Pelvis.left.range(j) = GPa.Frontal.Pelvis.left.max(j) - GPa.Frontal.Pelvis.left.min(j);
    GPa.Frontal.Pelvis.left.mean(j) = mean (object.Subject(i).Angle.Frontal.Pelvis.left(:,j));
    GPa.Frontal.Pelvis.left.mean_swing(j) = mean(object.Subject(i).Angle.Frontal.Pelvis.left(60:100,j));
    
    GPa.Transverse.Pelvis.left.max(j) = max (object.Subject(i).Angle.Transverse.Pelvis.left(:,j));
    GPa.Transverse.Pelvis.left.max_t(j) = find(object.Subject(i).Angle.Transverse.Pelvis.left(:,j)==GPa.Transverse.Pelvis.left.max(j));
    GPa.Transverse.Pelvis.left.min(j) = min (object.Subject(i).Angle.Transverse.Pelvis.left(:,j));
    GPa.Transverse.Pelvis.left.min_t(j) = find(object.Subject(i).Angle.Transverse.Pelvis.left(:,j)==GPa.Transverse.Pelvis.left.min(j));
    GPa.Transverse.Pelvis.left.range(j) = GPa.Transverse.Pelvis.left.max(j) - GPa.Transverse.Pelvis.left.min(j);
    GPa.Transverse.Pelvis.left.mean(j) = mean(object.Subject(i).Angle.Transverse.Pelvis.left(:,j));
    
        %Hip
    GPa.Sagittal.Hip.left.max(j) = max (object.Subject(i).Angle.Sagittal.Hip.left(:,j));
    GPa.Sagittal.Hip.left.max_t(j) = find(object.Subject(i).Angle.Sagittal.Hip.left(:,j)==GPa.Sagittal.Hip.left.max);
    GPa.Sagittal.Hip.left.max_swing(j) = max (object.Subject(i).Angle.Sagittal.Hip.left(50:100,j));
    GPa.Sagittal.Hip.left.max_swing_t(j) = find(object.Subject(i).Angle.Sagittal.Hip.left(50:100,j)==GPa.Sagittal.Hip.left.max_swing(j));
    GPa.Sagittal.Hip.left.min(j) = min (object.Subject(i).Angle.Sagittal.Hip.left(:,j));
    GPa.Sagittal.Hip.left.min_t(j) = find(object.Subject(i).Angle.Sagittal.Hip.left(:,j)==GPa.Sagittal.Hip.left.min(j));
    GPa.Sagittal.Hip.left.range(j) = GPa.Sagittal.Hip.left.max(j) - GPa.Sagittal.Hip.left.min(j);
    GPa.Sagittal.Hip.left.mean(j) = mean (object.Subject(i).Angle.Sagittal.Hip.left(:,j));
    
    GPa.Frontal.Hip.left.max(j) = max (object.Subject(i).Angle.Frontal.Hip.left(:,j));
    GPa.Frontal.Hip.left.max_t(j) = find(object.Subject(i).Angle.Frontal.Hip.left(:,j)==GPa.Frontal.Hip.left.max(j));
    GPa.Frontal.Hip.left.min(j) = min (object.Subject(i).Angle.Frontal.Hip.left(:,j));
    GPa.Frontal.Hip.left.min_t(j) = find(object.Subject(i).Angle.Frontal.Hip.left(:,j)==GPa.Frontal.Hip.left.min(j));
    GPa.Frontal.Hip.left.range(j) = GPa.Frontal.Hip.left.max(j) - GPa.Frontal.Hip.left.min(j);
    GPa.Frontal.Hip.left.mean(j) = mean(object.Subject(i).Angle.Frontal.Hip.left(:,j));
    
    GPa.Transverse.Hip.left.max(j) = max (object.Subject(i).Angle.Transverse.Hip.left(:,j));
    GPa.Transverse.Hip.left.max_t(j) = find(object.Subject(i).Angle.Transverse.Hip.left(:,j)==GPa.Transverse.Hip.left.max(j));
    GPa.Transverse.Hip.left.min(j) = min (object.Subject(i).Angle.Transverse.Hip.left(:,j));
    GPa.Transverse.Hip.left.min_t(j) = find(object.Subject(i).Angle.Transverse.Hip.left(:,j)==GPa.Transverse.Hip.left.min(j));
    GPa.Transverse.Hip.left.range(j) = GPa.Transverse.Hip.left.max(j) - GPa.Transverse.Hip.left.min(j);
    GPa.Transverse.Hip.left.mean(j) = mean (object.Subject(i).Angle.Transverse.Hip.left(:,j));
    GPa.Transverse.Hip.left.mean_swing(j) = mean (object.Subject(i).Angle.Transverse.Hip.left(60:100,j));
    
        %Knee
    GPa.Sagittal.Knee.left.max(j) = max (object.Subject(i).Angle.Sagittal.Knee.left(:,j));
    GPa.Sagittal.Knee.left.max_t(j) = find(object.Subject(i).Angle.Sagittal.Knee.left(:,j)==GPa.Sagittal.Knee.left.max(j));
    GPa.Sagittal.Knee.left.max_swing(j) = max (object.Subject(i).Angle.Sagittal.Knee.left(50:100,j));
    GPa.Sagittal.Knee.left.max_swing_t(j) = find(object.Subject(i).Angle.Sagittal.Knee.left(50:100,j)==GPa.Sagittal.Knee.left.max_swing(j));
    GPa.Sagittal.Knee.left.max_doubleStance(j) = max (object.Subject(i).Angle.Sagittal.Knee.left(1:20,j));
    GPa.Sagittal.Knee.left.max_doubleStance_t(j) = find(object.Subject(i).Angle.Sagittal.Knee.left(1:20,j)==GPa.Sagittal.Knee.left.max_doubleStance(j));
    GPa.Sagittal.Knee.left.min(j) = min (object.Subject(i).Angle.Sagittal.Knee.left(:,j));
    GPa.Sagittal.Knee.left.min_t(j) = find(object.Subject(i).Angle.Sagittal.Knee.left(:,j)==GPa.Sagittal.Knee.left.min);
    GPa.Sagittal.Knee.left.min_singleStance(j) = min (object.Subject(i).Angle.Sagittal.Knee.left(20:58,j));
    GPa.Sagittal.Knee.left.min_singleStance_t(j) = find(object.Subject(i).Angle.Sagittal.Knee.left(20:60,j)==GPa.Sagittal.Knee.left.min_singleStance(j));
    GPa.Sagittal.Knee.left.initialCont(j) = object.Subject(i).Angle.Sagittal.Knee.left(1,j);
    GPa.Sagittal.Knee.left.range(j) = GPa.Sagittal.Knee.left.max(j) - GPa.Sagittal.Knee.left.min(j);
    GPa.Sagittal.Knee.left.mean(j) = mean (object.Subject(i).Angle.Sagittal.Knee.left(:,j));
    
        %Ankle
    GPa.Sagittal.Ankle.left.max(j) = max (object.Subject(i).Angle.Sagittal.Ankle.left(:,j));
    GPa.Sagittal.Ankle.left.max_t(j) = find(object.Subject(i).Angle.Sagittal.Ankle.left(:,j)==GPa.Sagittal.Ankle.left.max(j));
    GPa.Sagittal.Ankle.left.min(j) = min (object.Subject(i).Angle.Sagittal.Ankle.left(:,j));
    GPa.Sagittal.Ankle.left.min_t(j) = find(object.Subject(i).Angle.Sagittal.Ankle.left(:,j)==GPa.Sagittal.Ankle.left.min(j));
    GPa.Sagittal.Ankle.left.initialCont(j) = object.Subject(i).Angle.Sagittal.Ankle.left(1,j);
    GPa.Sagittal.Ankle.left.min_doubleStance(j) = min (object.Subject(i).Angle.Sagittal.Ankle.left(1:20,j));
    GPa.Sagittal.Ankle.left.min_doubleStance_t(j) = find(object.Subject(i).Angle.Sagittal.Ankle.left(1:20,j)==GPa.Sagittal.Ankle.left.min_doubleStance(j));
    GPa.Sagittal.Ankle.left.max_terminalSwing(j) = max (object.Subject(i).Angle.Sagittal.Ankle.left(80:100,j));
    GPa.Sagittal.Ankle.left.max_terminalSwing_t(j) = find(object.Subject(i).Angle.Sagittal.Ankle.left(80:100,j)==GPa.Sagittal.Ankle.left.max_terminalSwing(j));
    GPa.Sagittal.Ankle.left.range(j) = GPa.Sagittal.Ankle.left.max(j) - GPa.Sagittal.Ankle.left.min(j);
    GPa.Sagittal.Ankle.left.mean(j) = mean (object.Subject(i).Angle.Sagittal.Ankle.left(:,j));
    
    %Foot
    GPa.Transverse.Foot.left.max(j) = max (object.Subject(i).Angle.Transverse.Foot.left(:,j));
    GPa.Transverse.Foot.left.max_t(j) = find(object.Subject(i).Angle.Transverse.Foot.left(:,j)==GPa.Transverse.Foot.left.max(j));
    GPa.Transverse.Foot.left.min(j) = min (object.Subject(i).Angle.Transverse.Foot.left(:,j));
    GPa.Transverse.Foot.left.min_t(j) = find(object.Subject(i).Angle.Transverse.Foot.left(:,j)==GPa.Transverse.Foot.left.min(j));
    GPa.Transverse.Foot.left.range(j) = GPa.Transverse.Foot.left.max(j) - GPa.Transverse.Foot.left.min(j);
    GPa.Transverse.Foot.left.mean(j) = mean (object.Subject(i).Angle.Transverse.Foot.left(:,j));
    
    
    %Moment
        %Hip
    GPm.Sagittal.Hip.left.max(j) = max (object.Subject(i).Moment.Sagittal.Hip.left(:,j));
    GPm.Sagittal.Hip.left.max_t(j) = find(object.Subject(i).Moment.Sagittal.Hip.left(:,j)==GPm.Sagittal.Hip.left.max(j));
    GPm.Sagittal.Hip.left.max_stance(j) = max (object.Subject(i).Moment.Sagittal.Hip.left(1:60,j));
    GPm.Sagittal.Hip.left.max_stance_t(j) = find(object.Subject(i).Moment.Sagittal.Hip.left(1:60,j)==GPm.Sagittal.Hip.left.max_stance(j));
    GPm.Sagittal.Hip.left.min(j) = min (object.Subject(i).Moment.Sagittal.Hip.left(:,j));
    GPm.Sagittal.Hip.left.min_t(j) = find(object.Subject(i).Moment.Sagittal.Hip.left(:,j)==GPm.Sagittal.Hip.left.min(j));
    GPm.Sagittal.Hip.left.range(j) = GPm.Sagittal.Hip.left.max(j) - GPm.Sagittal.Hip.left.min(j);
    GPm.Sagittal.Hip.left.mean(j) = mean (object.Subject(i).Moment.Sagittal.Hip.left(:,j));
    
    GPm.Frontal.Hip.left.max(j) = max (object.Subject(i).Moment.Frontal.Hip.left(:,j));
    GPm.Frontal.Hip.left.max_t(j) = find(object.Subject(i).Moment.Frontal.Hip.left(:,j)==GPm.Frontal.Hip.left.max(j));
    GPm.Frontal.Hip.left.max_earlyStance(j) = max (object.Subject(i).Moment.Frontal.Hip.left(1:32,j));
    GPm.Frontal.Hip.left.max_earlyStance_t(j) = find(object.Subject(i).Moment.Frontal.Hip.left(1:32,j)==GPm.Frontal.Hip.left.max_earlyStance(j));
    GPm.Frontal.Hip.left.max_lateStance(j) = max (object.Subject(i).Moment.Frontal.Hip.left(32:60,j));
    GPm.Frontal.Hip.left.max_lateStance_t(j) = find(object.Subject(i).Moment.Frontal.Hip.left(32:60,j)==GPm.Frontal.Hip.left.max_lateStance(j));
    GPm.Frontal.Hip.left.min(j) = min (object.Subject(i).Moment.Frontal.Hip.left(:,j));
    GPm.Frontal.Hip.left.min_t(j) = find(object.Subject(i).Moment.Frontal.Hip.left(:,j)==GPm.Frontal.Hip.left.min(j));
    GPm.Frontal.Hip.left.range(j) = GPm.Frontal.Hip.left.max(j) - GPm.Frontal.Hip.left.min(j);
    GPm.Frontal.Hip.left.mean(j) = mean (object.Subject(i).Moment.Frontal.Hip.left(:,j));
    GPm.Frontal.Hip.left.mean_earlyStance(j) = mean (object.Subject(i).Moment.Frontal.Hip.left(1:32,j));
    GPm.Frontal.Hip.left.mean_lateStance(j) = mean (object.Subject(i).Moment.Frontal.Hip.left(32:60,j));
    
    GPm.Transverse.Hip.left.max(j) = max (object.Subject(i).Moment.Transverse.Hip.left(:,j));
    GPm.Transverse.Hip.left.max_t(j) = find(object.Subject(i).Moment.Transverse.Hip.left(:,j)==GPm.Transverse.Hip.left.max);
    GPm.Transverse.Hip.left.min(j) = min (object.Subject(i).Moment.Transverse.Hip.left(:,j));
    GPm.Transverse.Hip.left.min_t(j) = find(object.Subject(i).Moment.Transverse.Hip.left(:,j)==GPm.Transverse.Hip.left.min);
    GPm.Transverse.Hip.left.range(j) = GPm.Transverse.Hip.left.max(j) - GPm.Transverse.Hip.left.min(j);
    GPm.Transverse.Hip.left.mean(j) = mean (object.Subject(i).Moment.Transverse.Hip.left(:,j));
    
        %Knee
    GPm.Sagittal.Knee.left.max(j) = max (object.Subject(i).Moment.Sagittal.Knee.left(:,j));
    GPm.Sagittal.Knee.left.max_t(j) = find(object.Subject(i).Moment.Sagittal.Knee.left(:,j)==GPm.Sagittal.Knee.left.max(j));
    GPm.Sagittal.Knee.left.max_doubleStance(j) = max (object.Subject(i).Moment.Sagittal.Knee.left(1:20,j));
    GPm.Sagittal.Knee.left.max_doubleStance_t(j) = find(object.Subject(i).Moment.Sagittal.Knee.left(1:20,j)==GPm.Sagittal.Knee.left.max_doubleStance(j));
    GPm.Sagittal.Knee.left.min(j) = min (object.Subject(i).Moment.Sagittal.Knee.left(:,j));
    GPm.Sagittal.Knee.left.min_t(j) = find(object.Subject(i).Moment.Sagittal.Knee.left(:,j)==GPm.Sagittal.Knee.left.min);
    GPm.Sagittal.Knee.left.min_singleStance(j) = min (object.Subject(i).Moment.Sagittal.Knee.left(21:60,j));
    GPm.Sagittal.Knee.left.min_singelStance_t(j) = find(object.Subject(i).Moment.Sagittal.Knee.left(21:60,j)==GPm.Sagittal.Knee.left.min_singleStance(j));
    GPm.Sagittal.Knee.left.range(j) = GPm.Sagittal.Knee.left.max(j) - GPm.Sagittal.Knee.left.min(j);
    GPm.Sagittal.Knee.left.mean(j) = mean (object.Subject(i).Moment.Sagittal.Knee.left(:,j));
    GPm.Sagittal.Knee.left.mean_stance(j) = mean (object.Subject(i).Moment.Sagittal.Knee.left(1:60,j));
    
    GPm.Frontal.Knee.left.max(j) = max (object.Subject(i).Moment.Frontal.Knee.left(:,j));
    GPm.Frontal.Knee.left.max_t(j) = find(object.Subject(i).Moment.Frontal.Knee.left(:,j)==GPm.Frontal.Knee.left.max(j));
    GPm.Frontal.Knee.left.min(j) = min (object.Subject(i).Moment.Frontal.Knee.left(:,j));
    GPm.Frontal.Knee.left.min_t(j) = find(object.Subject(i).Moment.Frontal.Knee.left(:,j)==GPm.Frontal.Knee.left.min(j));
    GPm.Frontal.Knee.left.range(j) = GPm.Frontal.Knee.left.max(j) - GPm.Frontal.Knee.left.min(j);
    GPm.Frontal.Knee.left.mean(j) = mean (object.Subject(i).Moment.Frontal.Knee.left(:,j));
    GPm.Frontal.Knee.left.mean_stance(j) = mean (object.Subject(i).Moment.Frontal.Knee.left(1:60,j));
    
    GPm.Transverse.Knee.left.max(j) = max (object.Subject(i).Moment.Transverse.Knee.left(:,j));
    GPm.Transverse.Knee.left.max_t(j) = find(object.Subject(i).Moment.Transverse.Knee.left(:,j)==GPm.Transverse.Knee.left.max(j));
    GPm.Transverse.Knee.left.min(j) = min (object.Subject(i).Moment.Transverse.Knee.left(:,j));
    GPm.Transverse.Knee.left.min_t(j) = find(object.Subject(i).Moment.Transverse.Knee.left(:,j)==GPm.Transverse.Knee.left.min(j));
    GPm.Transverse.Knee.left.range(j) = GPm.Transverse.Knee.left.max(j) - GPm.Transverse.Knee.left.min(j);
    GPm.Transverse.Knee.left.mean(j) = mean (object.Subject(i).Moment.Transverse.Knee.left(:,j));
    
        %Ankle
    GPm.Sagittal.Ankle.left.max(j) = max (object.Subject(i).Moment.Sagittal.Ankle.left(:,j));
    GPm.Sagittal.Ankle.left.max_t(j) = find(object.Subject(i).Moment.Sagittal.Ankle.left(:,j)==GPm.Sagittal.Ankle.left.max(j));
    GPm.Sagittal.Ankle.left.min(j) = min (object.Subject(i).Moment.Sagittal.Ankle.left(:,j));
    GPm.Sagittal.Ankle.left.min_t(j) = find(object.Subject(i).Moment.Sagittal.Ankle.left(:,j)==GPm.Sagittal.Ankle.left.min(j));
    GPm.Sagittal.Ankle.left.range(j) = GPm.Sagittal.Ankle.left.max(j) - GPm.Sagittal.Ankle.left.min(j);
    GPm.Sagittal.Ankle.left.mean(j) = mean (object.Subject(i).Moment.Sagittal.Ankle.left(:,j));
    
    %Power
        %Hip
    GPp.Hip.left.max(j) = max (object.Subject(i).Power.Hip.left(:,j));
    GPp.Hip.left.max_t(j) = find(object.Subject(i).Power.Hip.left(:,j)==GPp.Hip.left.max(j));
    GPp.Hip.left.min(j) = min (object.Subject(i).Power.Hip.left(:,j));
    GPp.Hip.left.min_t(j) = find(object.Subject(i).Power.Hip.left(:,j)==GPp.Hip.left.min(j));
    GPp.Hip.left.range(j) = GPp.Hip.left.max(j) - GPp.Hip.left.min(j);
    GPp.Hip.left.mean(j) = mean (object.Subject(i).Power.Hip.left(:,j));
        %Knee
    GPp.Knee.left.max(j) = max (object.Subject(i).Power.Knee.left(:,j));
    GPp.Knee.left.max_t(j) = find(object.Subject(i).Power.Knee.left(:,j)==GPp.Knee.left.max(j));
    GPp.Knee.left.min(j) = min (object.Subject(i).Power.Knee.left(:,j));
    GPp.Knee.left.min_t(j) = find(object.Subject(i).Power.Knee.left(:,j)==GPp.Knee.left.min(j));
    GPp.Knee.left.range(j) = GPp.Knee.left.max(j) - GPp.Knee.left.min(j);
    GPp.Knee.left.mean(j) = mean (object.Subject(i).Power.Knee.left(:,j));
        %Ankle
    GPp.Ankle.left.max(j) = max (object.Subject(i).Power.Ankle.left(:,j));
    GPp.Ankle.left.max_t(j) = find(object.Subject(i).Power.Ankle.left(:,j)==GPp.Ankle.left.max(j));
    GPp.Ankle.left.min(j) = min (object.Subject(i).Power.Ankle.left(:,j));
    GPp.Ankle.left.min_t(j) = find(object.Subject(i).Power.Ankle.left(:,j)==GPp.Ankle.left.min(j));
    GPp.Ankle.left.range(j) = GPp.Ankle.left.max(j) - GPp.Ankle.left.min(j);
    GPp.Ankle.left.mean(j) = mean (object.Subject(i).Power.Ankle.left(:,j));
    
end


%% Right Side
for j = 1:length(object.Subject(i).Angle.Sagittal.Thorax.right(1,:))
    %Angle
        %Thorax
    GPa.Sagittal.Thorax.right.max(j) = max (object.Subject(i).Angle.Sagittal.Thorax.right(:,j));
    GPa.Sagittal.Thorax.right.max_t(j) = find(object.Subject(i).Angle.Sagittal.Thorax.right(:,j)==GPa.Sagittal.Thorax.right.max(j));
    GPa.Sagittal.Thorax.right.min(j) = min (object.Subject(i).Angle.Sagittal.Thorax.right(:,j));
    GPa.Sagittal.Thorax.right.min_t(j) = find(object.Subject(i).Angle.Sagittal.Thorax.right(:,j)==GPa.Sagittal.Thorax.right.min(j));
    GPa.Sagittal.Thorax.right.range(j) = GPa.Sagittal.Thorax.right.max(j) - GPa.Sagittal.Thorax.right.min(j);
    GPa.Sagittal.Thorax.right.mean(j) = mean (object.Subject(i).Angle.Sagittal.Thorax.right(:,j));
    
    GPa.Frontal.Thorax.right.max(j) = max (object.Subject(i).Angle.Frontal.Thorax.right(:,j));
    GPa.Frontal.Thorax.right.max_t(j) = find(object.Subject(i).Angle.Frontal.Thorax.right(:,j)==GPa.Frontal.Thorax.right.max(j));
    GPa.Frontal.Thorax.right.min(j) = min (object.Subject(i).Angle.Frontal.Thorax.right(:,j));
    GPa.Frontal.Thorax.right.min_t(j) = find(object.Subject(i).Angle.Frontal.Thorax.right(:,j)==GPa.Frontal.Thorax.right.min(j));
    GPa.Frontal.Thorax.right.range(j) = GPa.Frontal.Thorax.right.max(j) - GPa.Frontal.Thorax.right.min(j);
    GPa.Frontal.Thorax.right.mean(j) = mean (object.Subject(i).Angle.Frontal.Thorax.right(:,j));
    
    GPa.Transverse.Thorax.right.max(j) = max (object.Subject(i).Angle.Transverse.Thorax.right(:,j));
    GPa.Transverse.Thorax.right.max_t(j) = find(object.Subject(i).Angle.Transverse.Thorax.right(:,j)==GPa.Transverse.Thorax.right.max(j));
    GPa.Transverse.Thorax.right.min(j) = min (object.Subject(i).Angle.Transverse.Thorax.right(:,j));
    GPa.Transverse.Thorax.right.min_t(j) = find(object.Subject(i).Angle.Transverse.Thorax.right(:,j)==GPa.Transverse.Thorax.right.min(j));
    GPa.Transverse.Thorax.right.range(j) = GPa.Transverse.Thorax.right.max(j) - GPa.Transverse.Thorax.right.min(j);
    GPa.Transverse.Thorax.right.mean(j) = mean (object.Subject(i).Angle.Transverse.Thorax.right(:,j));
    
        %Pelvis
    GPa.Sagittal.Pelvis.right.max(j) = max (object.Subject(i).Angle.Sagittal.Pelvis.right(:,j));
    GPa.Sagittal.Pelvis.right.max_t(j) = find(object.Subject(i).Angle.Sagittal.Pelvis.right(:,j)==GPa.Sagittal.Pelvis.right.max(j));
    GPa.Sagittal.Pelvis.right.min(j) = min (object.Subject(i).Angle.Sagittal.Pelvis.right(:,j));
    GPa.Sagittal.Pelvis.right.min_t(j) = find(object.Subject(i).Angle.Sagittal.Pelvis.right(:,j)==GPa.Sagittal.Pelvis.right.min(j));
    GPa.Sagittal.Pelvis.right.range(j) = GPa.Sagittal.Pelvis.right.max(j) - GPa.Sagittal.Pelvis.right.min(j);
    GPa.Sagittal.Pelvis.right.mean(j) = mean (object.Subject(i).Angle.Sagittal.Pelvis.right(:,j));
    
    GPa.Frontal.Pelvis.right.max(j) = max (object.Subject(i).Angle.Frontal.Pelvis.right(:,j));
    GPa.Frontal.Pelvis.right.max_t(j) = find(object.Subject(i).Angle.Frontal.Pelvis.right(:,j)==GPa.Frontal.Pelvis.right.max(j));
    GPa.Frontal.Pelvis.right.max_stance(j) = max (object.Subject(i).Angle.Frontal.Pelvis.right(1:59,j));
    GPa.Frontal.Pelvis.right.max_stance_t(j) = find(object.Subject(i).Angle.Frontal.Pelvis.right(1:59,j)==GPa.Frontal.Pelvis.right.max_stance(j));
    GPa.Frontal.Pelvis.right.max_swing(j) = max (object.Subject(i).Angle.Frontal.Pelvis.right(60:100,j));
    GPa.Frontal.Pelvis.right.max_swing_t(j) = find(object.Subject(i).Angle.Frontal.Pelvis.right(60:100,j)==GPa.Frontal.Pelvis.right.max_swing(j));
    GPa.Frontal.Pelvis.right.min(j) = min (object.Subject(i).Angle.Frontal.Pelvis.right(:,j));
    GPa.Frontal.Pelvis.right.min_t(j) = find(object.Subject(i).Angle.Frontal.Pelvis.right(:,j)==GPa.Frontal.Pelvis.right.min(j));
    GPa.Frontal.Pelvis.right.range(j) = GPa.Frontal.Pelvis.right.max(j) - GPa.Frontal.Pelvis.right.min(j);
    GPa.Frontal.Pelvis.right.mean(j) = mean (object.Subject(i).Angle.Frontal.Pelvis.right(:,j));
    GPa.Frontal.Pelvis.right.mean_swing(j) = mean(object.Subject(i).Angle.Frontal.Pelvis.right(60:100,j));
    
    GPa.Transverse.Pelvis.right.max(j) = max (object.Subject(i).Angle.Transverse.Pelvis.right(:,j));
    GPa.Transverse.Pelvis.right.max_t(j) = find(object.Subject(i).Angle.Transverse.Pelvis.right(:,j)==GPa.Transverse.Pelvis.right.max(j));
    GPa.Transverse.Pelvis.right.min(j) = min (object.Subject(i).Angle.Transverse.Pelvis.right(:,j));
    GPa.Transverse.Pelvis.right.min_t(j) = find(object.Subject(i).Angle.Transverse.Pelvis.right(:,j)==GPa.Transverse.Pelvis.right.min(j));
    GPa.Transverse.Pelvis.right.range(j) = GPa.Transverse.Pelvis.right.max(j) - GPa.Transverse.Pelvis.right.min(j);
    GPa.Transverse.Pelvis.right.mean(j) = mean(object.Subject(i).Angle.Transverse.Pelvis.right(:,j));
    
        %Hip
    GPa.Sagittal.Hip.right.max(j) = max (object.Subject(i).Angle.Sagittal.Hip.right(:,j));
    GPa.Sagittal.Hip.right.max_t(j) = find(object.Subject(i).Angle.Sagittal.Hip.right(:,j)==GPa.Sagittal.Hip.right.max(j));
    GPa.Sagittal.Hip.right.max_swing(j) = max (object.Subject(i).Angle.Sagittal.Hip.right(50:100,j));
    GPa.Sagittal.Hip.right.max_swing_t(j) = find(object.Subject(i).Angle.Sagittal.Hip.right(50:100,j)==GPa.Sagittal.Hip.right.max_swing(j));
    GPa.Sagittal.Hip.right.min(j) = min (object.Subject(i).Angle.Sagittal.Hip.right(:,j));
    GPa.Sagittal.Hip.right.min_t(j) = find(object.Subject(i).Angle.Sagittal.Hip.right(:,j)==GPa.Sagittal.Hip.right.min(j));
    GPa.Sagittal.Hip.right.range(j) = GPa.Sagittal.Hip.right.max(j) - GPa.Sagittal.Hip.right.min(j);
    GPa.Sagittal.Hip.right.mean(j) = mean (object.Subject(i).Angle.Sagittal.Hip.right(:,j));
    
    GPa.Frontal.Hip.right.max(j) = max (object.Subject(i).Angle.Frontal.Hip.right(:,j));
    GPa.Frontal.Hip.right.max_t(j) = find(object.Subject(i).Angle.Frontal.Hip.right(:,j)==GPa.Frontal.Hip.right.max(j));
    GPa.Frontal.Hip.right.min(j) = min (object.Subject(i).Angle.Frontal.Hip.right(:,j));
    GPa.Frontal.Hip.right.min_t(j) = find(object.Subject(i).Angle.Frontal.Hip.right(:,j)==GPa.Frontal.Hip.right.min(j));
    GPa.Frontal.Hip.right.range(j) = GPa.Frontal.Hip.right.max(j) - GPa.Frontal.Hip.right.min(j);
    GPa.Frontal.Hip.right.mean(j) = mean(object.Subject(i).Angle.Frontal.Hip.right(:,j));
    
    GPa.Transverse.Hip.right.max(j) = max (object.Subject(i).Angle.Transverse.Hip.right(:,j));
    GPa.Transverse.Hip.right.max_t(j) = find(object.Subject(i).Angle.Transverse.Hip.right(:,j)==GPa.Transverse.Hip.right.max(j));
    GPa.Transverse.Hip.right.min(j) = min (object.Subject(i).Angle.Transverse.Hip.right(:,j));
    GPa.Transverse.Hip.right.min_t(j) = find(object.Subject(i).Angle.Transverse.Hip.right(:,j)==GPa.Transverse.Hip.right.min(j));
    GPa.Transverse.Hip.right.range(j) = GPa.Transverse.Hip.right.max(j) - GPa.Transverse.Hip.right.min(j);
    GPa.Transverse.Hip.right.mean(j) = mean (object.Subject(i).Angle.Transverse.Hip.right(:,j));
    GPa.Transverse.Hip.right.mean_swing(j) = mean (object.Subject(i).Angle.Transverse.Hip.right(60:100,j));
    
        %Knee
    GPa.Sagittal.Knee.right.max(j) = max (object.Subject(i).Angle.Sagittal.Knee.right(:,j));
    GPa.Sagittal.Knee.right.max_t(j) = find(object.Subject(i).Angle.Sagittal.Knee.right(:,j)==GPa.Sagittal.Knee.right.max(j));
    GPa.Sagittal.Knee.right.max_swing(j) = max (object.Subject(i).Angle.Sagittal.Knee.right(50:100,j));
    GPa.Sagittal.Knee.right.max_swing_t(j) = find(object.Subject(i).Angle.Sagittal.Knee.right(50:100,j)==GPa.Sagittal.Knee.right.max_swing(j));
    GPa.Sagittal.Knee.right.max_doubleStance(j) = max (object.Subject(i).Angle.Sagittal.Knee.right(1:20,j));
    GPa.Sagittal.Knee.right.max_doubleStance_t(j) = find(object.Subject(i).Angle.Sagittal.Knee.right(1:20,j)==GPa.Sagittal.Knee.right.max_doubleStance(j));
    GPa.Sagittal.Knee.right.min(j) = min (object.Subject(i).Angle.Sagittal.Knee.right(:,j));
    GPa.Sagittal.Knee.right.min_t(j) = find(object.Subject(i).Angle.Sagittal.Knee.right(:,j)==GPa.Sagittal.Knee.right.min(j));
    GPa.Sagittal.Knee.right.min_singleStance(j) = min (object.Subject(i).Angle.Sagittal.Knee.right(20:58,j));
    GPa.Sagittal.Knee.right.min_singleStance_t(j) = find(object.Subject(i).Angle.Sagittal.Knee.right(20:60,j)==GPa.Sagittal.Knee.right.min_singleStance(j));
    GPa.Sagittal.Knee.right.initialCont(j) = object.Subject(i).Angle.Sagittal.Knee.right(1,j);
    GPa.Sagittal.Knee.right.range(j) = GPa.Sagittal.Knee.right.max(j) - GPa.Sagittal.Knee.right.min(j);
    GPa.Sagittal.Knee.right.mean(j) = mean (object.Subject(i).Angle.Sagittal.Knee.right(:,j));
    
        %Ankle
    GPa.Sagittal.Ankle.right.max(j) = max (object.Subject(i).Angle.Sagittal.Ankle.right(:,j));
    GPa.Sagittal.Ankle.right.max_t(j) = find(object.Subject(i).Angle.Sagittal.Ankle.right(:,j)==GPa.Sagittal.Ankle.right.max(j));
    GPa.Sagittal.Ankle.right.min(j) = min (object.Subject(i).Angle.Sagittal.Ankle.right(:,j));
    GPa.Sagittal.Ankle.right.min_t(j) = find(object.Subject(i).Angle.Sagittal.Ankle.right(:,j)==GPa.Sagittal.Ankle.right.min(j));
    GPa.Sagittal.Ankle.right.initialCont(j) = object.Subject(i).Angle.Sagittal.Ankle.right(1,j);
    GPa.Sagittal.Ankle.right.min_doubleStance(j) = min (object.Subject(i).Angle.Sagittal.Ankle.right(1:20,j));
    GPa.Sagittal.Ankle.right.min_doubleStance_t(j) = find(object.Subject(i).Angle.Sagittal.Ankle.right(1:20,j)==GPa.Sagittal.Ankle.right.min_doubleStance(j));
    GPa.Sagittal.Ankle.right.max_terminalSwing(j) = max (object.Subject(i).Angle.Sagittal.Ankle.right(80:100,j));
    GPa.Sagittal.Ankle.right.max_terminalSwing_t(j) = find(object.Subject(i).Angle.Sagittal.Ankle.right(80:100,j)==GPa.Sagittal.Ankle.right.max_terminalSwing(j));
    GPa.Sagittal.Ankle.right.range(j) = GPa.Sagittal.Ankle.right.max(j) - GPa.Sagittal.Ankle.right.min(j);
    GPa.Sagittal.Ankle.right.mean(j) = mean (object.Subject(i).Angle.Sagittal.Ankle.right(:,j));
    
    %Foot
    GPa.Transverse.Foot.right.max(j) = max (object.Subject(i).Angle.Transverse.Foot.right(:,j));
    GPa.Transverse.Foot.right.max_t(j) = find(object.Subject(i).Angle.Transverse.Foot.right(:,j)==GPa.Transverse.Foot.right.max(j));
    GPa.Transverse.Foot.right.min(j) = min (object.Subject(i).Angle.Transverse.Foot.right(:,j));
    GPa.Transverse.Foot.right.min_t(j) = find(object.Subject(i).Angle.Transverse.Foot.right(:,j)==GPa.Transverse.Foot.right.min(j));
    GPa.Transverse.Foot.right.range(j) = GPa.Transverse.Foot.right.max(j) - GPa.Transverse.Foot.right.min(j);
    GPa.Transverse.Foot.right.mean(j) = mean (object.Subject(i).Angle.Transverse.Foot.right(:,j));
    
    
    %Moment
        %Hip
    GPm.Sagittal.Hip.right.max(j) = max (object.Subject(i).Moment.Sagittal.Hip.right(:,j));
    GPm.Sagittal.Hip.right.max_t(j) = find(object.Subject(i).Moment.Sagittal.Hip.right(:,j)==GPm.Sagittal.Hip.right.max(j));
    GPm.Sagittal.Hip.right.max_stance(j) = max (object.Subject(i).Moment.Sagittal.Hip.right(1:60,j));
    GPm.Sagittal.Hip.right.max_stance_t(j) = find(object.Subject(i).Moment.Sagittal.Hip.right(1:60,j)==GPm.Sagittal.Hip.right.max_stance(j));
    GPm.Sagittal.Hip.right.min(j) = min (object.Subject(i).Moment.Sagittal.Hip.right(:,j));
    GPm.Sagittal.Hip.right.min_t(j) = find(object.Subject(i).Moment.Sagittal.Hip.right(:,j)==GPm.Sagittal.Hip.right.min(j));
    GPm.Sagittal.Hip.right.range(j) = GPm.Sagittal.Hip.right.max(j) - GPm.Sagittal.Hip.right.min(j);
    GPm.Sagittal.Hip.right.mean(j) = mean (object.Subject(i).Moment.Sagittal.Hip.right(:,j));
    
    GPm.Frontal.Hip.right.max(j) = max (object.Subject(i).Moment.Frontal.Hip.right(:,j));
    GPm.Frontal.Hip.right.max_t(j) = find(object.Subject(i).Moment.Frontal.Hip.right(:,j)==GPm.Frontal.Hip.right.max(j));
    GPm.Frontal.Hip.right.max_earlyStance(j) = max (object.Subject(i).Moment.Frontal.Hip.right(1:32,j));
    GPm.Frontal.Hip.right.max_earlyStance_t(j) = find(object.Subject(i).Moment.Frontal.Hip.right(1:32,j)==GPm.Frontal.Hip.right.max_earlyStance(j));
    GPm.Frontal.Hip.right.max_lateStance(j) = max (object.Subject(i).Moment.Frontal.Hip.right(32:60,j));
    GPm.Frontal.Hip.right.max_lateStance_t(j) = find(object.Subject(i).Moment.Frontal.Hip.right(32:60,j)==GPm.Frontal.Hip.right.max_lateStance(j));
    GPm.Frontal.Hip.right.min(j) = min (object.Subject(i).Moment.Frontal.Hip.right(:,j));
    GPm.Frontal.Hip.right.min_t(j) = find(object.Subject(i).Moment.Frontal.Hip.right(:,j)==GPm.Frontal.Hip.right.min(j));
    GPm.Frontal.Hip.right.range(j) = GPm.Frontal.Hip.right.max(j) - GPm.Frontal.Hip.right.min(j);
    GPm.Frontal.Hip.right.mean(j) = mean (object.Subject(i).Moment.Frontal.Hip.right(:,j));
    GPm.Frontal.Hip.right.mean_earlyStance(j) = mean (object.Subject(i).Moment.Frontal.Hip.right(1:32,j));
    GPm.Frontal.Hip.right.mean_lateStance(j) = mean (object.Subject(i).Moment.Frontal.Hip.right(32:60,j));
    
    GPm.Transverse.Hip.right.max(j) = max (object.Subject(i).Moment.Transverse.Hip.right(:,j));
    GPm.Transverse.Hip.right.max_t(j) = find(object.Subject(i).Moment.Transverse.Hip.right(:,j)==GPm.Transverse.Hip.right.max(j));
    GPm.Transverse.Hip.right.min(j) = min (object.Subject(i).Moment.Transverse.Hip.right(:,j));
    GPm.Transverse.Hip.right.min_t(j) = find(object.Subject(i).Moment.Transverse.Hip.right(:,j)==GPm.Transverse.Hip.right.min(j));
    GPm.Transverse.Hip.right.range(j) = GPm.Transverse.Hip.right.max(j) - GPm.Transverse.Hip.right.min(j);
    GPm.Transverse.Hip.right.mean(j) = mean (object.Subject(i).Moment.Transverse.Hip.right(:,j));
    
        %Knee
    GPm.Sagittal.Knee.right.max(j) = max (object.Subject(i).Moment.Sagittal.Knee.right(:,j));
    GPm.Sagittal.Knee.right.max_t(j) = find(object.Subject(i).Moment.Sagittal.Knee.right(:,j)==GPm.Sagittal.Knee.right.max(j));
    GPm.Sagittal.Knee.right.max_doubleStance(j) = max (object.Subject(i).Moment.Sagittal.Knee.right(1:20,j));
    GPm.Sagittal.Knee.right.max_doubleStance_t(j) = find(object.Subject(i).Moment.Sagittal.Knee.right(1:20,j)==GPm.Sagittal.Knee.right.max_doubleStance(j));
    GPm.Sagittal.Knee.right.min(j) = min (object.Subject(i).Moment.Sagittal.Knee.right(:,j));
    GPm.Sagittal.Knee.right.min_t(j) = find(object.Subject(i).Moment.Sagittal.Knee.right(:,j)==GPm.Sagittal.Knee.right.min(j));
    GPm.Sagittal.Knee.right.min_singleStance(j) = min (object.Subject(i).Moment.Sagittal.Knee.right(21:60,j));
    GPm.Sagittal.Knee.right.min_singelStance_t(j) = find(object.Subject(i).Moment.Sagittal.Knee.right(21:60,j)==GPm.Sagittal.Knee.right.min_singleStance(j));
    GPm.Sagittal.Knee.right.range(j) = GPm.Sagittal.Knee.right.max(j) - GPm.Sagittal.Knee.right.min(j);
    GPm.Sagittal.Knee.right.mean(j) = mean (object.Subject(i).Moment.Sagittal.Knee.right(:,j));
    GPm.Sagittal.Knee.right.mean_stance(j) = mean (object.Subject(i).Moment.Sagittal.Knee.right(1:60,j));
    
    GPm.Frontal.Knee.right.max(j) = max (object.Subject(i).Moment.Frontal.Knee.right(:,j));
    GPm.Frontal.Knee.right.max_t(j) = find(object.Subject(i).Moment.Frontal.Knee.right(:,j)==GPm.Frontal.Knee.right.max(j));
    GPm.Frontal.Knee.right.min(j) = min (object.Subject(i).Moment.Frontal.Knee.right(:,j));
    GPm.Frontal.Knee.right.min_t(j) = find(object.Subject(i).Moment.Frontal.Knee.right(:,j)==GPm.Frontal.Knee.right.min(j));
    GPm.Frontal.Knee.right.range(j) = GPm.Frontal.Knee.right.max(j) - GPm.Frontal.Knee.right.min(j);
    GPm.Frontal.Knee.right.mean(j) = mean (object.Subject(i).Moment.Frontal.Knee.right(:,j));
    GPm.Frontal.Knee.right.mean_stance(j) = mean (object.Subject(i).Moment.Frontal.Knee.right(1:60,j));
    
    GPm.Transverse.Knee.right.max(j) = max (object.Subject(i).Moment.Transverse.Knee.right(:,j));
    GPm.Transverse.Knee.right.max_t(j) = find(object.Subject(i).Moment.Transverse.Knee.right(:,j)==GPm.Transverse.Knee.right.max(j));
    GPm.Transverse.Knee.right.min(j) = min (object.Subject(i).Moment.Transverse.Knee.right(:,j));
    GPm.Transverse.Knee.right.min_t(j) = find(object.Subject(i).Moment.Transverse.Knee.right(:,j)==GPm.Transverse.Knee.right.min(j));
    GPm.Transverse.Knee.right.range(j) = GPm.Transverse.Knee.right.max(j) - GPm.Transverse.Knee.right.min(j);
    GPm.Transverse.Knee.right.mean(j) = mean (object.Subject(i).Moment.Transverse.Knee.right(:,j));
    
        %Ankle
    GPm.Sagittal.Ankle.right.max(j) = max (object.Subject(i).Moment.Sagittal.Ankle.right(:,j));
    GPm.Sagittal.Ankle.right.max_t(j) = find(object.Subject(i).Moment.Sagittal.Ankle.right(:,j)==GPm.Sagittal.Ankle.right.max(j));
    GPm.Sagittal.Ankle.right.min(j) = min (object.Subject(i).Moment.Sagittal.Ankle.right(:,j));
    GPm.Sagittal.Ankle.right.min_t(j) = find(object.Subject(i).Moment.Sagittal.Ankle.right(:,j)==GPm.Sagittal.Ankle.right.min(j));
    GPm.Sagittal.Ankle.right.range(j) = GPm.Sagittal.Ankle.right.max(j) - GPm.Sagittal.Ankle.right.min(j);
    GPm.Sagittal.Ankle.right.mean(j) = mean (object.Subject(i).Moment.Sagittal.Ankle.right(:,j));
    
    %Power
        %Hip
    GPp.Hip.right.max(j) = max (object.Subject(i).Power.Hip.right(:,j));
    GPp.Hip.right.max_t(j) = find(object.Subject(i).Power.Hip.right(:,j)==GPp.Hip.right.max(j));
    GPp.Hip.right.min(j) = min (object.Subject(i).Power.Hip.right(:,j));
    GPp.Hip.right.min_t(j) = find(object.Subject(i).Power.Hip.right(:,j)==GPp.Hip.right.min(j));
    GPp.Hip.right.range(j) = GPp.Hip.right.max(j) - GPp.Hip.right.min(j);
    GPp.Hip.right.mean(j) = mean (object.Subject(i).Power.Hip.right(:,j));
        %Knee
    GPp.Knee.right.max(j) = max (object.Subject(i).Power.Knee.right(:,j));
    GPp.Knee.right.max_t(j) = find(object.Subject(i).Power.Knee.right(:,j)==GPp.Knee.right.max(j));
    GPp.Knee.right.min(j) = min (object.Subject(i).Power.Knee.right(:,j));
    GPp.Knee.right.min_t(j) = find(object.Subject(i).Power.Knee.right(:,j)==GPp.Knee.right.min(j));
    GPp.Knee.right.range(j) = GPp.Knee.right.max(j) - GPp.Knee.right.min(j);
    GPp.Knee.right.mean(j) = mean (object.Subject(i).Power.Knee.right(:,j));
        %Ankle
    GPp.Ankle.right.max(j) = max (object.Subject(i).Power.Ankle.right(:,j));
    GPp.Ankle.right.max_t(j) = find(object.Subject(i).Power.Ankle.right(:,j)==GPp.Ankle.right.max(j));
    GPp.Ankle.right.min(j) = min (object.Subject(i).Power.Ankle.right(:,j));
    GPp.Ankle.right.min_t(j) = find(object.Subject(i).Power.Ankle.right(:,j)==GPp.Ankle.right.min(j));
    GPp.Ankle.right.range(j) = GPp.Ankle.right.max(j) - GPp.Ankle.right.min(j);
    GPp.Ankle.right.mean(j) = mean (object.Subject(i).Power.Ankle.right(:,j)); 
end

object.Subject(i).GP.Angle = GPa;
object.Subject(i).GP.Moment = GPm;
object.Subject(i).GP.Power = GPp;

end