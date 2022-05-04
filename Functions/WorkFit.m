function [PosWorkFit,NegWorkFit] = WorkFit(object,PowerFit,PosWorkFit,NegWorkFit,i,LStart,LEnd,nLcyc,RStart,REnd,nRcyc)
if isfield(object.Data(i).PowerFit,'left')
    for cL = 1 : length(object.Data(i).PowerFit.left.cycle)
        for l = 1 : length(PowerFit.left.cycle(cL).data)
            pospower = PowerFit.left.cycle(cL).data(l).parameter(3,:); %only transverse plane
            negpower = PowerFit.left.cycle(cL).data(l).parameter(3,:); %only transverse plane
            for t=1:length(pospower)
                if pospower(t)<0
                    pospower(t)=0;
                end
            end
            for t=1:length(negpower)
                if negpower(t)>0
                    negpower(t)=0;
                end
            end
            poswork = sum(pospower)*(LEnd(cL)-LStart(cL))/100/(100-1);
            negwork = sum(negpower)*(LEnd(cL)-LStart(cL))/100/(100-1);
            PosWorkFit.left.cycle(cL).data(l).name = PowerFit.left.cycle(cL).data(l).name;
            PosWorkFit.left.cycle(cL).data(l).parameter = poswork;
            NegWorkFit.left.cycle(cL).data(l).name = PowerFit.left.cycle(cL).data(l).name;
            NegWorkFit.left.cycle(cL).data(l).parameter = negwork;
        end
    end
    clear poswork negwork
end
if isfield(object.Data(i).PowerFit,'right')
    for cR = 1 : length(object.Data(i).PowerFit.right.cycle)
        for l = 1 : length(PowerFit.right.cycle(cR).data)
            pospower = PowerFit.right.cycle(cR).data(l).parameter(3,:);
            negpower = PowerFit.right.cycle(cR).data(l).parameter(3,:);
            for t=1:length(pospower)
                if pospower(t)<0
                    pospower(t)=0;
                end
            end
            for t=1:length(negpower)
                if negpower(t)>0
                    negpower(t)=0;
                end
            end
            poswork = sum(pospower)*(REnd(cR)-RStart(cR))/100/(100-1);
            negwork = sum(negpower)*(REnd(cR)-RStart(cR))/100/(100-1);
            PosWorkFit.right.cycle(cR).data(l).name = PowerFit.right.cycle(cR).data(l).name;
            PosWorkFit.right.cycle(cR).data(l).parameter = poswork;
            NegWorkFit.right.cycle(cR).data(l).name = PowerFit.right.cycle(cR).data(l).name;
            NegWorkFit.right.cycle(cR).data(l).parameter = negwork;
        end
    end
    clear poswork negwork
end
end