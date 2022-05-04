function [GP] = GPComputation(object,AngleFit,MomentFit,PowerFit,GP,datafiles,i)
    GP(i).filename = datafiles{i}; %GP data structure containes only data for valid cycles
    %% Left side
    %% Left Angle Parameter
    if isfield(object.Data(i).AngleFit,'left')
        dataL = [];
        %collect all angle data from left cycles
        for m = 1:3
            % 1: Sagittal; 2: Frontal; 3: Transverse
            dataL.Thorax(m).data = [];
            dataL.Pelvis(m).data = [];
            dataL.Hip(m).data = [];
            dataL.Knee(m).data = [];
            dataL.Ankle(m).data = [];
            dataL.Foot(m).data = [];
            for c = 1: length(object.Data(i).AngleFit.left.cycle)
                dataL.Thorax(m).data = [dataL.Thorax(m).data;  object.Data(i).AngleFit.left.cycle(c).data(11).parameter(m,:)];
                dataL.Pelvis(m).data = [dataL.Pelvis(m).data;  object.Data(i).AngleFit.left.cycle(c).data(10).parameter(m,:)];
                dataL.Hip(m).data = [dataL.Hip(m).data;  object.Data(i).AngleFit.left.cycle(c).data(1).parameter(m,:)];
                dataL.Knee(m).data = [dataL.Knee(m).data;  object.Data(i).AngleFit.left.cycle(c).data(2).parameter(m,:)];
                dataL.Ankle(m).data = [dataL.Ankle(m).data;  object.Data(i).AngleFit.left.cycle(c).data(3).parameter(m,:)];
                dataL.Foot(m).data = [dataL.Foot(m).data;  object.Data(i).AngleFit.left.cycle(c).data(9).parameter(m,:)];
            end
        end
    
        %% Thorax
        %Thorax Sagital Angles
        GP(i).TTiltminL = min(dataL.Thorax(1).data,[],'all');
        GP(i).TTiltmaxL = max(dataL.Thorax(1).data,[],'all');
        GP(i).TTiltRangeL = GP(i).TTiltmaxL-GP(i).TTiltminL;
        GP(i).TTiltAveL = mean(dataL.Thorax(1).data,'all');
        %Thorax Frontal Angles
        GP(i).TLatSwaymaxDownL = min(dataL.Thorax(2).data,[],'all');
        GP(i).TLatSwaymaxUpL = max(dataL.Thorax(2).data,[],'all');
        GP(i).TLatSwayRangeL = GP(i).TLatSwaymaxUpL-GP(i).TLatSwaymaxDownL;
        %Thorax Transverse Angles
        GP(i).TRotmaxExtL = min(dataL.Thorax(3).data,[],'all');
        GP(i).TRotmaxIntL = max(dataL.Thorax(3).data,[],'all');
        GP(i).TRotRangeL = GP(i).TRotmaxIntL-GP(i).TRotmaxExtL;
    
        %% Pelvis
        %Pelvis Sagital Angles
        GP(i).PTiltmaxL=max(dataL.Pelvis(1).data,[],'all');
        GP(i).PTiltminL=min(dataL.Pelvis(1).data,[],'all');
        GP(i).PTiltRangeL=GP(i).PTiltmaxL-GP(i).PTiltminL;
        GP(i).PTiltAveL=mean(dataL.Pelvis(1).data,'all');  
        %Pelvis Frontal Angles
        GP(i).POblmaxUpL=max(dataL.Pelvis(2).data,[],'all');
        GP(i).POblmaxDownL=min(dataL.Pelvis(2).data,[],'all');
        GP(i).POblmaxUpStanceL=max(dataL.Pelvis(2).data(:,1:59),[],'all');    
        GP(i).POblmaxUpSwingL=max(dataL.Pelvis(2).data(:,60:100),[],'all');    
        GP(i).POblAveSwingL=mean(dataL.Pelvis(2).data(:,60:100),'all');   
        [~,GP(i).POblmaxUpTimingL]= find(dataL.Pelvis(2).data == GP(i).POblmaxUpL); 
        GP(i).POblRangeL=GP(i).POblmaxUpL-GP(i).POblmaxDownL;
        %Pelvis Transverse Angles
        GP(i).PRotmaxExtL=min(dataL.Pelvis(3).data,[],'all');
        GP(i).PRotmaxIntL=max(dataL.Pelvis(3).data,[],'all');
        GP(i).PRotRangeL=GP(i).PRotmaxIntL-GP(i).PRotmaxExtL;
    
        %% Hip
        %Hip Sagital Angles
        GP(i).HipFlexminL=min(dataL.Hip(1).data,[],'all');
        GP(i).HipFlexmaxL=max(dataL.Hip(1).data,[],'all');
        GP(i).HipFlexmaxInswingL=max(dataL.Hip(1).data(:,50:100),[],'all');
        GP(i).HipFlexRangeL=GP(i).HipFlexmaxL-GP(i).HipFlexminL;
        GP(i).HipFlexICL=mean(dataL.Hip(1).data(:,1),'all');  
        %Hip Frontal Angles
        GP(i).HipAbdmaxL=min(dataL.Hip(2).data,[],'all');
        [~,GP(i).HipAbdmaxTimingL]= find(dataL.Hip(2).data == GP(i).HipAbdmaxL); 
        GP(i).HipAddmaxL=max(dataL.Hip(2).data,[],'all');
        [~,GP(i).HipAddmaxTimingL]= find(dataL.Hip(2).data == GP(i).HipAddmaxL); 
        GP(i).HipFrontRangeL=GP(i).HipAddmaxL-GP(i).HipAbdmaxL;  
        %Hip Transverse Angles
        GP(i).HipmaxExtRotL=min(dataL.Hip(3).data,[],'all');
        GP(i).HipmaxIntRotL=max(dataL.Hip(3).data,[],'all');
        GP(i).HipRotRangeL=GP(i).HipmaxIntRotL-GP(i).HipmaxExtRotL;
        GP(i).HipRotAveL=mean(dataL.Hip(3).data(:,60:100),'all'); 
        GP(i).HipRotICL=mean(dataL.Hip(3).data(:,1),'all'); 
    
        %% Knee
        %Knee Sagital Angles
        GP(i).KneeFlexminL=min(dataL.Knee(1).data,[],'all');
        GP(i).KneeFlexmaxL=max(dataL.Knee(1).data,[],'all');
        [~,GP(i).KneeFlexmaxTimingL]=find(dataL.Knee(1).data == GP(i).KneeFlexmaxL);
        GP(i).KneeFlexPeakinSwingL= max(dataL.Knee(1).data(:,50:100),[],'all');
        GP(i).KneeFlexRangeL=GP(i).KneeFlexmaxL-GP(i).KneeFlexminL;
        GP(i).KneeFlexICL=mean(dataL.Knee(1).data(:,1),'all'); 
        GP(i).KneeFlexmaxLR_L=max(dataL.Knee(1).data(:,1:20),[],'all');
        GP(i).KneeFlexminMS_L=min(dataL.Knee(1).data(:,1:20),[],'all'); 
    
        %% Ankle
        GP(i).AnklemaxDorsL= max(dataL.Ankle(1).data,[],'all');
        [~,GP(i).AnklemaxDorsTimingL]= find(dataL.Ankle(1).data == GP(i).AnklemaxDorsL);
        GP(i).AnklemaxPlantL=min(dataL.Ankle(1).data,[],'all');
        [~,GP(i).AnklemaxPlantTimingL]= find(dataL.Ankle(1).data == GP(i).AnklemaxPlantL);
        GP(i).AnkleSagRangeL=GP(i).AnklemaxDorsL-GP(i).AnklemaxPlantL;
        GP(i).AnkleSagICL=mean(dataL.Ankle(1).data(:,1),'all');  
        GP(i).AnklePeakFlexLR_L=min(dataL.Ankle(1).data(:,1:20),[],'all');
        GP(i).AnkleSagmaxTermSwingL=max(dataL.Ankle(1).data(:,80:100),[],'all');
    
        %% Foot
        %Foot Trans Angles
        GP(i).FootProgmaxExtL=min(dataL.Foot(3).data,[],'all');
        GP(i).FootProgmaxIntL=max(dataL.Foot(3).data,[],'all');
        GP(i).FootProgAveStanceL=mean(dataL.Foot(3).data(:,1:59),'all');
    end
    %% Left Moment Parameter
    if isfield(object.Data(i).MomentFit,'left')
        dataL = [];
        %collect all angle data from left cycles
        for m = 1:3
            % 1: Sagittal; 2: Frontal; 3: Transverse
            dataL.MHip(m).data = [];
            dataL.MKnee(m).data = [];
            dataL.MAnkle(m).data = [];
            for c = 1: length(object.Data(i).MomentFit.left.cycle)
                dataL.MHip(m).data = [dataL.MHip(m).data;  object.Data(i).MomentFit.left.cycle(c).data(2).parameter(m,:)];
                dataL.MKnee(m).data = [dataL.MKnee(m).data;  object.Data(i).MomentFit.left.cycle(c).data(3).parameter(m,:)];
                dataL.MAnkle(m).data = [dataL.MAnkle(m).data;  object.Data(i).MomentFit.left.cycle(c).data(4).parameter(m,:)];
            end
        end
        %% Hip 
        %Hip Sagital Moments
        GP(i).HipSagMomMaxFlexL=min(dataL.MHip(1).data,[],'all');
        GP(i).HipSagMomMaxExtL=max(dataL.MHip(1).data,[],'all');
        GP(i).HipSagMomMaxExtStanceL=max(dataL.MHip(1).data(:,1:59),[],'all'); 
        %Hip Frontal Moments
        GP(i).HipfrontMommaxAddL=min(dataL.MHip(2).data,[],'all');
        GP(i).HipfrontMommaxAbdL=max(dataL.MHip(2).data,[],'all');
        GP(i).HipfrontMommaxAbdES_L=max(dataL.MHip(2).data(:,1:32),[],'all'); 
        [~,GP(i).HipfrontMommaxAbdESTimingL]=find(dataL.MHip(2).data == GP(i).HipfrontMommaxAbdES_L);
        GP(i).HipfrontMommaxAbdLS_L=max(dataL.MHip(2).data(:,33:59),[],'all'); %LS= late stance 32-59%
        GP(i).HipfrontMommaxAbdLSTimingLminus32=find(dataL.MHip(2).data == GP(i).HipfrontMommaxAbdLS_L);  %!! have to add 32!;
        GP(i).HipfrontMommaxAbdLSTimingL=GP(i).HipfrontMommaxAbdLSTimingLminus32+32;
        GP(i).HipfrontMomAveAbdES_L=mean(dataL.MHip(2).data(:,1:32),'all'); 
        GP(i).HipfrontMomAveAbdLS_L=mean(dataL.MHip(2).data(:,32:59),'all'); %LS= late stance 30-58%
        GP(i).HipfrontMomAveStanceL=mean(dataL.MHip(2).data(:,1:59),'all');   
        %Hip Transverse Moments
        GP(i).HipTransMommaxIntL=min(dataL.MHip(3).data,[],'all');
        GP(i).HipTransMommaxExtL=max(dataL.MHip(3).data,[],'all');
    
        %% Knee
        %Knee Sagital Moments
        GP(i).KneeSagMommaxFlexL=min(dataL.MKnee(1).data,[],'all');
        GP(i).KneeSagMommaxExtL=max(dataL.MKnee(1).data,[],'all');
        GP(i).KneeSagMomMaxExtLRL=max(dataL.MKnee(1).data(:,1:20),[],'all');
        GP(i).KneeSagMomMinExtMSL=min(dataL.MKnee(1).data(:,21:59),[],'all'); %MS = Mid stance
        GP(i).KneeSagMomAveStanceL=mean(dataL.MKnee(1).data(:,1:59),'all');
        %Knee Frontal Moments
        GP(i).KneeFrontMommaxVarusL=min(dataL.MKnee(2).data,[],'all');
        GP(i).KneeFrontMommaxValgusL=max(dataL.MKnee(2).data,[],'all');
        GP(i).KneeFrontMomAveStanceL=mean(dataL.MKnee(2).data(:,1:59),'all');  
        %Knee Transverse Moments
        GP(i).KneeTransMommaxExtL=max(dataL.MKnee(3).data,[],'all');
        GP(i).KneeTransMommaxIntL=min(dataL.MKnee(3).data,[],'all');
    
        %% Ankle
        GP(i).AnkleSagMommaxdorsL=min(dataL.MAnkle(1).data,[],'all');
        GP(i).AnkleSagMommaxplantL=max(dataL.MAnkle(1).data,[],'all');
    end
    %% Left Power Parameters
    if isfield(object.Data(i).PowerFit,'left')
        dataL = [];
        %collect all angle data from left cycles
        for m = 1:3
            % 1: Sagittal; 2: Frontal; 3: Transverse
            dataL.PHip(m).data = [];
            dataL.PKnee(m).data = [];
            dataL.PAnkle(m).data = [];
            for c = 1: length(object.Data(i).PowerFit.left.cycle)
                dataL.PHip(m).data = [dataL.PHip(m).data;  object.Data(i).PowerFit.left.cycle(c).data(1).parameter(m,:)];
                dataL.PKnee(m).data = [dataL.PKnee(m).data;  object.Data(i).PowerFit.left.cycle(c).data(2).parameter(m,:)];
                dataL.PAnkle(m).data = [dataL.PAnkle(m).data;  object.Data(i).PowerFit.left.cycle(c).data(3).parameter(m,:)];
            end
        end
        %% Hip 
        %Hip Sagital Powers
        GP(i).HipPowermaxGenL=max(dataL.PHip(3).data,[],'all');
        GP(i).HipPowermaxAbsL=min(dataL.PHip(3).data,[],'all');
        GP(i).HipPowerAveL=mean(dataL.PHip(3).data,'all');
    
        %% Knee
        GP(i).KneePowermaxGenL=max(dataL.PKnee(3).data,[],'all');
        GP(i).KneePowermaxAbsL=min(dataL.PKnee(3).data,[],'all');
        GP(i).KneePowerAveL=mean(dataL.PKnee(3).data,'all'); 
    
        %% Ankle
        %Ankle Sagital Power
        GP(i).AnklePowermaxGenL=max(dataL.PAnkle(3).data,[],'all');
        GP(i).AnklePowermaxAbsL=min(dataL.PAnkle(3).data,[],'all');
        GP(i).AnklePowerAveL=mean(dataL.PAnkle(3).data,'all');
    end
    %% Right side
    %% Right Angle Parameter
    if isfield(object.Data(i).AngleFit,'right')
        dataR = [];
        %collect all angle data from left cycles
        for m = 1:3
            % 1: Sagittal; 2: Frontal; 3: Transverse
            dataR.Thorax(m).data = [];
            dataR.Pelvis(m).data = [];
            dataR.Hip(m).data = [];
            dataR.Knee(m).data = [];
            dataR.Ankle(m).data = [];
            dataR.Foot(m).data = [];
            for c = 1: length(object.Data(i).AngleFit.right.cycle)
                dataR.Thorax(m).data = [dataR.Thorax(m).data;  object.Data(i).AngleFit.right.cycle(c).data(11).parameter(m,:)];
                dataR.Pelvis(m).data = [dataR.Pelvis(m).data;  object.Data(i).AngleFit.right.cycle(c).data(10).parameter(m,:)];
                dataR.Hip(m).data = [dataR.Hip(m).data;  object.Data(i).AngleFit.right.cycle(c).data(1).parameter(m,:)];
                dataR.Knee(m).data = [dataR.Knee(m).data;  object.Data(i).AngleFit.right.cycle(c).data(2).parameter(m,:)];
                dataR.Ankle(m).data = [dataR.Ankle(m).data;  object.Data(i).AngleFit.right.cycle(c).data(3).parameter(m,:)];
                dataR.Foot(m).data = [dataR.Foot(m).data;  object.Data(i).AngleFit.right.cycle(c).data(9).parameter(m,:)];
            end
        end
    
        %% Thorax
        %Thorax Sagital Angles
        GP(i).TTiltminR = min(dataR.Thorax(1).data,[],'all');
        GP(i).TTiltmaxR = max(dataR.Thorax(1).data,[],'all');
        GP(i).TTiltRangeR = GP(i).TTiltmaxR-GP(i).TTiltminR;
        GP(i).TTiltAveR = mean(dataR.Thorax(1).data,'all');
        %Thorax Frontal Angles
        GP(i).TLatSwaymaxDownR = min(dataR.Thorax(2).data,[],'all');
        GP(i).TLatSwaymaxUpR = max(dataR.Thorax(2).data,[],'all');
        GP(i).TLatSwayRangeR = GP(i).TLatSwaymaxUpR-GP(i).TLatSwaymaxDownR;
        %Thorax Transverse Angles
        GP(i).TRotmaxExtR = min(dataR.Thorax(3).data,[],'all');
        GP(i).TRotmaxIntR = max(dataR.Thorax(3).data,[],'all');
        GP(i).TRotRangeR = GP(i).TRotmaxIntR-GP(i).TRotmaxExtR;
    
        %% Pelvis
        %Pelvis Sagital Angles
        GP(i).PTiltmaxR=max(dataR.Pelvis(1).data,[],'all');
        GP(i).PTiltminR=min(dataR.Pelvis(1).data,[],'all');
        GP(i).PTiltRangeR=GP(i).PTiltmaxR-GP(i).PTiltminR;
        GP(i).PTiltAveR=mean(dataR.Pelvis(1).data,'all');  
        %Pelvis Frontal Angles
        GP(i).POblmaxUpR=max(dataR.Pelvis(2).data,[],'all');
        GP(i).POblmaxDownR=min(dataR.Pelvis(2).data,[],'all');
        GP(i).POblmaxUpStanceR=max(dataR.Pelvis(2).data(:,1:59),[],'all');    
        GP(i).POblmaxUpSwingR=max(dataR.Pelvis(2).data(:,60:100),[],'all');    
        GP(i).POblAveSwingR=mean(dataR.Pelvis(2).data(:,60:100),'all');   
        [~,GP(i).POblmaxUpTimingR]= find(dataR.Pelvis(2).data == GP(i).POblmaxUpR); 
        GP(i).POblRangeR=GP(i).POblmaxUpR-GP(i).POblmaxDownR;
        %Pelvis Transverse Angles
        GP(i).PRotmaxExtR=min(dataR.Pelvis(3).data,[],'all');
        GP(i).PRotmaxIntR=max(dataR.Pelvis(3).data,[],'all');
        GP(i).PRotRangeR=GP(i).PRotmaxIntR-GP(i).PRotmaxExtR;
    
        %% Hip
        %Hip Sagital Angles
        GP(i).HipFlexminR=min(dataR.Hip(1).data,[],'all');
        GP(i).HipFlexmaxR=max(dataR.Hip(1).data,[],'all');
        GP(i).HipFlexmaxInswingR=max(dataR.Hip(1).data(:,50:100),[],'all');
        GP(i).HipFlexRangeR=GP(i).HipFlexmaxR-GP(i).HipFlexminR;
        GP(i).HipFlexICR=mean(dataR.Hip(1).data(:,1),'all');  
        %Hip Frontal Angles
        GP(i).HipAbdmaxR=min(dataR.Hip(2).data,[],'all');
        [~,GP(i).HipAbdmaxTimingR]= find(dataR.Hip(2).data == GP(i).HipAbdmaxR); 
        GP(i).HipAddmaxR=max(dataR.Hip(2).data,[],'all');
        [~,GP(i).HipAddmaxTimingR]= find(dataR.Hip(2).data == GP(i).HipAddmaxR); 
        GP(i).HipFrontRangeR=GP(i).HipAddmaxR-GP(i).HipAbdmaxR;  
        %Hip Transverse Angles
        GP(i).HipmaxExtRotR=min(dataR.Hip(3).data,[],'all');
        GP(i).HipmaxIntRotR=max(dataR.Hip(3).data,[],'all');
        GP(i).HipRotRangeR=GP(i).HipmaxIntRotR-GP(i).HipmaxExtRotR;
        GP(i).HipRotAveR=mean(dataR.Hip(3).data(:,60:100),'all'); 
        GP(i).HipRotICR=mean(dataR.Hip(3).data(:,1),'all'); 
    
        %% Knee
        %Knee Sagital Angles
        GP(i).KneeFlexminR=min(dataR.Knee(1).data,[],'all');
        GP(i).KneeFlexmaxR=max(dataR.Knee(1).data,[],'all');
        [~,GP(i).KneeFlexmaxTimingR]=find(dataR.Knee(1).data == GP(i).KneeFlexmaxR);
        GP(i).KneeFlexPeakinSwingR= max(dataR.Knee(1).data(:,50:100),[],'all');
        GP(i).KneeFlexRangeR=GP(i).KneeFlexmaxR-GP(i).KneeFlexminR;
        GP(i).KneeFlexICR=mean(dataR.Knee(1).data(:,1),'all'); 
        GP(i).KneeFlexmaxLR_R=max(dataR.Knee(1).data(:,1:20),[],'all');
        GP(i).KneeFlexminMS_R=min(dataR.Knee(1).data(:,1:20),[],'all'); 
    
        %% Ankle
        GP(i).AnklemaxDorsR= max(dataR.Ankle(1).data,[],'all');
        [~,GP(i).AnklemaxDorsTimingR]= find(dataR.Ankle(1).data == GP(i).AnklemaxDorsR);
        GP(i).AnklemaxPlantR=min(dataR.Ankle(1).data,[],'all');
        [~,GP(i).AnklemaxPlantTimingR]= find(dataR.Ankle(1).data == GP(i).AnklemaxPlantR);
        GP(i).AnkleSagRangeR=GP(i).AnklemaxDorsR-GP(i).AnklemaxPlantR;
        GP(i).AnkleSagICR=mean(dataR.Ankle(1).data(:,1),'all');  
        GP(i).AnklePeakFlexLR_R=min(dataR.Ankle(1).data(:,1:20),[],'all');
        GP(i).AnkleSagmaxTermSwingR=max(dataR.Ankle(1).data(:,80:100),[],'all');
    
        %% Foot
        %Foot Trans Angles
        GP(i).FootProgmaxExtR=min(dataR.Foot(3).data,[],'all');
        GP(i).FootProgmaxIntR=max(dataR.Foot(3).data,[],'all');
        GP(i).FootProgAveStanceR=mean(dataR.Foot(3).data(:,1:59),'all');
    end
    %% Right Moment Parameter
    if isfield(object.Data(i).MomentFit,'right')
        dataR = [];
        %collect all angle data from left cycles
        for m = 1:3
            % 1: Sagittal; 2: Frontal; 3: Transverse
            dataR.MHip(m).data = [];
            dataR.MKnee(m).data = [];
            dataR.MAnkle(m).data = [];
            for c = 1: length(object.Data(i).MomentFit.right.cycle)
                dataR.MHip(m).data = [dataR.MHip(m).data;  object.Data(i).MomentFit.right.cycle(c).data(2).parameter(m,:)];
                dataR.MKnee(m).data = [dataR.MKnee(m).data;  object.Data(i).MomentFit.right.cycle(c).data(3).parameter(m,:)];
                dataR.MAnkle(m).data = [dataR.MAnkle(m).data;  object.Data(i).MomentFit.right.cycle(c).data(4).parameter(m,:)];
            end
        end
        %% Hip 
        %Hip Sagital Moments
        GP(i).HipSagMomMaxFlexR=min(dataR.MHip(1).data,[],'all');
        GP(i).HipSagMomMaxExtR=max(dataR.MHip(1).data,[],'all');
        GP(i).HipSagMomMaxExtStanceR=max(dataR.MHip(1).data(:,1:59),[],'all'); 
        %Hip Frontal Moments
        GP(i).HipfrontMommaxAddR=min(dataR.MHip(2).data,[],'all');
        GP(i).HipfrontMommaxAbdR=max(dataR.MHip(2).data,[],'all');
        GP(i).HipfrontMommaxAbdES_R=max(dataR.MHip(2).data(:,1:32),[],'all'); 
        [~,GP(i).HipfrontMommaxAbdESTimingR]=find(dataR.MHip(2).data == GP(i).HipfrontMommaxAbdES_R);
        GP(i).HipfrontMommaxAbdLS_R=max(dataR.MHip(2).data(:,33:59),[],'all'); %LS= late stance 32-59%
        GP(i).HipfrontMommaxAbdLSTimingRminus32=find(dataR.MHip(2).data == GP(i).HipfrontMommaxAbdLS_R);  %!! have to add 32!;
        GP(i).HipfrontMommaxAbdLSTimingR=GP(i).HipfrontMommaxAbdLSTimingRminus32+32;
        GP(i).HipfrontMomAveAbdES_R=mean(dataR.MHip(2).data(:,1:32),'all'); 
        GP(i).HipfrontMomAveAbdLS_R=mean(dataR.MHip(2).data(:,32:59),'all'); %LS= late stance 30-58%
        GP(i).HipfrontMomAveStanceR=mean(dataR.MHip(2).data(:,1:59),'all');   
        %Hip Transverse Moments
        GP(i).HipTransMommaxIntR=min(dataR.MHip(3).data,[],'all');
        GP(i).HipTransMommaxExtR=max(dataR.MHip(3).data,[],'all');
    
        %% Knee
        %Knee Sagital Moments
        GP(i).KneeSagMommaxFlexR=min(dataR.MKnee(1).data,[],'all');
        GP(i).KneeSagMommaxExtR=max(dataR.MKnee(1).data,[],'all');
        GP(i).KneeSagMomMaxExtLRR=max(dataR.MKnee(1).data(:,1:20),[],'all');
        GP(i).KneeSagMomMinExtMSR=min(dataR.MKnee(1).data(:,21:59),[],'all'); %MS = Mid stance
        GP(i).KneeSagMomAveStanceR=mean(dataR.MKnee(1).data(:,1:59),'all');
        %Knee Frontal Moments
        GP(i).KneeFrontMommaxVarusR=min(dataR.MKnee(2).data,[],'all');
        GP(i).KneeFrontMommaxValgusR=max(dataR.MKnee(2).data,[],'all');
        GP(i).KneeFrontMomAveStanceR=mean(dataR.MKnee(2).data(:,1:59),'all');  
        %Knee Transverse Moments
        GP(i).KneeTransMommaxExtR=max(dataR.MKnee(3).data,[],'all');
        GP(i).KneeTransMommaxIntR=min(dataR.MKnee(3).data,[],'all');
    
        %% Ankle
        GP(i).AnkleSagMommaxdorsR=min(dataR.MAnkle(1).data,[],'all');
        GP(i).AnkleSagMommaxplantR=max(dataR.MAnkle(1).data,[],'all');
    end
    %% Right Power Parameters
    if isfield(object.Data(i).PowerFit,'right')
        dataR = [];
        %collect all angle data from left cycles
        for m = 1:3
            % 1: Sagittal; 2: Frontal; 3: Transverse
            dataR.PHip(m).data = [];
            dataR.PKnee(m).data = [];
            dataR.PAnkle(m).data = [];
            for c = 1: length(object.Data(i).PowerFit.right.cycle)
                dataR.PHip(m).data = [dataR.PHip(m).data;  object.Data(i).PowerFit.right.cycle(c).data(1).parameter(m,:)];
                dataR.PKnee(m).data = [dataR.PKnee(m).data;  object.Data(i).PowerFit.right.cycle(c).data(2).parameter(m,:)];
                dataR.PAnkle(m).data = [dataR.PAnkle(m).data;  object.Data(i).PowerFit.right.cycle(c).data(3).parameter(m,:)];
            end
        end
        %% Hip 
        %Hip Sagital Powers
        GP(i).HipPowermaxGenR=max(dataR.PHip(3).data,[],'all');
        GP(i).HipPowermaxAbsR=min(dataR.PHip(3).data,[],'all');
        GP(i).HipPowerAveR=mean(dataR.PHip(3).data,'all');
    
        %% Knee
        GP(i).KneePowermaxGenR=max(dataR.PKnee(3).data,[],'all');
        GP(i).KneePowermaxAbsR=min(dataR.PKnee(3).data,[],'all');
        GP(i).KneePowerAveR=mean(dataR.PKnee(3).data,'all'); 
    
        %% Ankle
        %Ankle Sagital Power
        GP(i).AnklePowermaxGenR=max(dataR.PAnkle(3).data,[],'all');
        GP(i).AnklePowermaxAbsR=min(dataR.PAnkle(3).data,[],'all');
        GP(i).AnklePowerAveR=mean(dataR.PAnkle(3).data,'all');
    end
end