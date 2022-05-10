%% GDI - control group %%
% calculation of the GDI parameters for the controll group.

% INPUT:
% CG_Dataset  :   dataset with the kinematic angles of the control group.
%                  Created using the MoveAbilityLab.m structure.

% OUTPUT:
% c_control    :   Feature comonents colum vector, resuting from the mean
%                  of the c vectros for each gaitcycle counted in the
%                  control group.

function [CG_Dataset] = GDI_control_calculation(CG_Dataset)

%GC_Dataset is already composed by vectors with 100 elemets, we decide to
%sample with 1% increment.

%% matrix G creation
G = [];
data = CG_Dataset.Angle;
for i = 1:length(data.Sagittal.Pelvis.left(1,:))
        % Pelvis
    Lpel_tilt = data.Sagittal.Pelvis.left(:,i);
    Lpel_obl = data.Frontal.Pelvis.left(:,i);
    Lpel_rot = data.Transverse.Pelvis.left(:,i);
        %Hip
    Lhip_flex = data.Sagittal.Hip.left(:,i);
    Lhip_abd = data.Frontal.Hip.left(:,i);
    Lhip_rot = data.Transverse.Hip.left(:,i);
        %Knee
    Lknee_flex = data.Sagittal.Knee.left(:,i);
        %Ankle
    Lankle_dors = data.Sagittal.Ankle.left(:,i);
        %Foot progression
    Lfoot_prog = data.Transverse.Foot.left(:,i);
    
        % ceation of the matrix G
    Lg = [Lpel_tilt; Lpel_obl; Lpel_rot; Lhip_flex; Lhip_abd; Lhip_rot; Lknee_flex; Lankle_dors; Lfoot_prog];
    G = [G, Lg];
end


for i = 1:length(data.Sagittal.Pelvis.right(1,:))
        % Pelvis
    Rpel_tilt = data.Sagittal.Pelvis.right(:,i);
    Rpel_obl = data.Frontal.Pelvis.right(:,i);
    Rpel_rot = data.Transverse.Pelvis.right(:,i);
        %Hip
    Rhip_flex = data.Sagittal.Hip.right(:,i);
    Rhip_abd = data.Frontal.Hip.right(:,i);
    Rhip_rot = data.Transverse.Hip.right(:,i);
        %Knee
    Rknee_flex = data.Sagittal.Knee.right(:,i);
        %Ankle
    Rankle_dors = data.Sagittal.Ankle.right(:,i);
        %Foot progression
    Rfoot_prog = data.Transverse.Foot.right(:,i);
    
        % ceation of the matrix G       
    Rg = [Rpel_tilt; Rpel_obl; Rpel_rot; Rhip_flex; Rhip_abd; Rhip_rot; Rknee_flex; Rankle_dors; Rfoot_prog];
    G = [G, Rg];
end

n = size(G,2); % number of gait cycles in the control group
%% Singular Value Decomposition
[U,S,V]=svd(G);
% U is the singular vector matix that we need because it is mxm => matric G
%is mxn with m=459 and in the article there are 459 f vectors
% U is the f-basis (f) vectors indicating the gait features
% But (f) should be unit length singular vector so its needed to normalize
% all the vectors of the matrix (2-norm)

F = [];
l = length(U);
for j = 1:l
    f = U(:,j)/(norm(U(:,j)));
    F = [F, f];
end

% F is the matrix containing column vectors f of unit length representing
% the gait fearures.

s = diag(S); %column vector with the singular values of the matrix G

%% M_crit calculation
m_max = length(s);

%VAF calculation
VAF = []; %vector containing all the results of VAF based on the no. of "m", each row is a diff m
lambda = s.^2;
lambda_tot = sum(lambda);
for m = 1 : m_max
    lambda_m = lambda(1:m);
    VAF_m = 100*(sum(lambda_m)/lambda_tot);
    VAF = [VAF; VAF_m];
    %if VAF >= 98
        %m_crit_vaf = m;
        %break
    %end
end

%phy calculation
Phy = []; %matrix of the fithfulness of the reconstructed vector, each row is a different "m" while the colums identify the gait cycle used


for i = 1 : n
    g = G(:,i);
    phy_g = [];
    for m = 1:m_max
        g_mk = [];
        for k = 1:m
            f_k = F(:,k);
            c_k = dot(g,f_k);
            g_mk = [g_mk, (c_k*f_k)]; %matrix containing the k "f" vectors moltiplied by the corresponding k "c" feature comonent. 
                                      %Each column is a vector, thus to calculate g_m is needed the sum of the rows creating a column vector
        end
        g_m = sum(g_mk,2);
        phy_m = dot(g,g_m)/(norm(g))^2;
        phy_g = [phy_g; phy_m];
    end
    Phy = [Phy, phy_g];
end

phy_mean = mean(Phy,2); %is the mean among each gait cycle reconstructed by "m" features

% selection of m_crit based on the article by M.H. Schwartz (2008)
for m= 1:m_max
    if VAF(m)>=98 && phy_mean(m)>=0.98
        m_crit = m;
        break
    end
end

%% Feaure components c

C = []; %is the matix containing all the featur components column vectors, one for each controll gait cycle.

for i = 1 : n
    g = G(:,i);
    for k = 1:m_crit
        f_k = F(:,k);
        c_k = dot(g,f_k);
        C(k,i) = c_k;
    end
end

CG_Dataset.GDI_control.c = mean(C,2);

%% Raw GDI for the control group
 
for i = 1 : n
    c_i = C(:,i); % colum vector for the i-th gait cycle in the control group
    CG_Dataset.GDI_control.GDI(i) = log(norm(c_i - CG_Dataset.GDI_control.c));
end

CG_Dataset.GDI_control.mean = mean (CG_Dataset.GDI_control.GDI);
CG_Dataset.GDI_control.sd = std(CG_Dataset.GDI_control.GDI);

end
