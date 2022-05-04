function [ASAngleFit,ASMomentFit,ASPowerFit,ASPosWorkFit,ASNegWorkFit,ASgait] = ASGait(AngleFit,MomentFit,PowerFit,PosWorkFit,NegWorkFit,AffectedSide,i)
%% Definition of Affected Side and Data Structure
ASAngleFit = [];
ASMomentFit = [];
ASPowerFit = [];
ASPosWorkFit = [];
ASNegWorkFit = [];
ASgait = 0;
% ASgait = isempty(AffectedSide{1});
% if isempty(AffectedSide{1}) == 0
%% Sets Affected and Unaffected Side
if strncmp('Left',AffectedSide,1)
    ASAngleFit(i).ASide = AngleFit(i).left;
    ASAngleFit(i).USide = AngleFit(i).right;
    ASMomentFit(i).ASide = MomentFit(i).left;
    ASMomentFit(i).USide = MomentFit(i).right;
    ASPowerFit(i).ASide = PowerFit(i).left;
    ASPowerFit(i).USide = PowerFit(i).right;
    ASPosWorkFit(i).ASide = PosWorkFit(i).left;
    ASPosWorkFit(i).USide = PosWorkFit(i).right;
    ASNegWorkFit(i).ASide = NegWorkFit(i).left;
    ASNegWorkFit(i).USide = NegWorkFit(i).right;
    ASgait = 1;
elseif strncmp('Right',AffectedSide,1)
    ASAngleFit(i).ASide = AngleFit(i).right;
    ASAngleFit(i).USide = AngleFit(i).left;
    ASMomentFit(i).ASide = MomentFit(i).right;
    ASMomentFit(i).USide = MomentFit(i).left;
    ASPowerFit(i).ASide = PowerFit(i).right;
    ASPowerFit(i).USide = PowerFit(i).left;
    ASPosWorkFit(i).ASide = PosWorkFit(i).right;
    ASPosWorkFit(i).USide = PosWorkFit(i).left;
    ASNegWorkFit(i).ASide = NegWorkFit(i).right;
    ASNegWorkFit(i).USide = NegWorkFit(i).left;
    ASgait = 1;
end
end
% end
