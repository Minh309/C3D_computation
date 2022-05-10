%% GDI computation %%
% 1 subject at the time --> or should it be the full subject groups?

function [] = GDI_computation(object, i, CG_Dataset)

object.Subject(i).GDI = [];

G_L = [];
G_R = [];

data = object.Subject(i).Angle;
for j = 1:length(data.Sagittal.Pelvis.left(1,:))
        % Pelvis
    Lpel_tilt = data.Sagittal.Pelvis.left(:,j);
    Lpel_obl = data.Frontal.Pelvis.left(:,j);
    Lpel_rot = data.Transverse.Pelvis.left(:,j);
        %Hip
    Lhip_flex = data.Sagittal.Hip.left(:,j);
    Lhip_abd = data.Frontal.Hip.left(:,j);
    Lhip_rot = data.Transverse.Hip.left(:,j);
        %Knee
    Lknee_flex = data.Sagittal.Knee.left(:,j);
        %Ankle
    Lankle_dors = data.Sagittal.Ankle.left(:,j);
        %Foot progression
    Lfoot_prog = data.Transverse.Foot.left(:,j);
    
        % ceation of the matrix G
    Lg = [Lpel_tilt; Lpel_obl; Lpel_rot; Lhip_flex; Lhip_abd; Lhip_rot; Lknee_flex; Lankle_dors; Lfoot_prog];
    G_L = [G_L, Lg];
end


for j = 1:length(data.Sagittal.Pelvis.right(1,:))
        % Pelvis
    Rpel_tilt = data.Sagittal.Pelvis.right(:,j);
    Rpel_obl = data.Frontal.Pelvis.right(:,j);
    Rpel_rot = data.Transverse.Pelvis.right(:,j);
        %Hjp
    Rhip_flex = data.Sagittal.Hip.right(:,j);
    Rhip_abd = data.Frontal.Hip.right(:,j);
    Rhip_rot = data.Transverse.Hip.right(:,j);
        %Knee
    Rknee_flex = data.Sagittal.Knee.right(:,j);
        %Ankle
    Rankle_dors = data.Sagittal.Ankle.right(:,j);
        %Foot progressjon
    Rfoot_prog = data.Transverse.Foot.right(:,j);
    
        % ceation of the matrix G       
    Rg = [Rpel_tilt; Rpel_obl; Rpel_rot; Rhip_flex; Rhip_abd; Rhip_rot; Rknee_flex; Rankle_dors; Rfoot_prog];
    G_R = [G_R, Rg];
end

nL = size(G_L,2); % number of left gait cycles anaysed for the subject
nR = size(G_R,2); % number of right gait cycles anaysed for the subject

%% Singular Value Decomposition
% U is the singular vector matix that we need because it is mxm => matric G
%is mxn with m=459 and in the article there are 459 f vectors
% U is the f-basis (f) vectors indicating the gait features
% But (f) should be unit length singular vector so its needed to normalize
% all the vectors of the matrix (2-norm)

[U_L,S_L,V_L]=svd(G_L);
F_L = [];
l = length(U_L);
for j = 1:l
    f = U_L(:,j)/(norm(U_L(:,j)));
    F_L = [F_L, f];
end

[U_R,S_R,V_R]=svd(G_R);
F_R = [];
l = length(U_R);
for j = 1:l
    f = U_R(:,j)/(norm(U_R(:,j)));
    F_R = [F_R, f];
end

%% Featrue components calculation
m_crit = length(CG_Dataset.GDI_control.c);
CL = zeros(m_crit, nL); %is the matix containing all the featur components column vectors, one for each controll gait cycle.
for j = 1 : nL
    g = G_L(:,j);
    for k = 1:m_crit
        f_k = F_L(:,k);
        c_k = dot(g,f_k);
        CL (k,j) = c_k;   %each colum refers to a gait cycle, "c" are colum vectros, one for each gait cycle
    end
end

CR = zeros(m_crit, nR); %is the matix containing all the featur components column vectors, one for each controll gait cycle.
for j = 1 : nR
    g = G_R(:,j);
    for k = 1:m_crit
        f_k = F_R(:,k);
        c_k = dot(g,f_k);
        CR (k,j) = c_k;   %each colum refers to a gait cycle, "c" are colum vectros, one for each gait cycle
    end
end

%% GDI calculation
 
for j = 1:nL
    GDI_i = log(norm(CL(:,j)- CG_Dataset.GDI_control.c));
    zGDI_i = (GDI_i - CG_Dataset.GDI_control.mean)/CG_Dataset.GDI_control.sd;
    GDI.left(j) = 100 - (10 * zGDI_i);
end

object.Subject(i).GDI.meanL = mean(GDI.left);
object.Subject(i).GDI.sdL = std(GDI.left);

for j = 1:nR
    GDI_i = log(norm(CR(:,j)-CG_Dataset.GDI_control.c));
    zGDI_i = (GDI_i - CG_Dataset.GDI_control.mean)/CG_Dataset.GDI_control.sd;
    GDI.right(j) = 100 - (10 * zGDI_i);
end

object.Subject(i).GDI.meanR = mean(GDI.right);
object.Subject(i).GDI.sdR = std(GDI.right);
end

