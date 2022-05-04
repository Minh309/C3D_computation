function [PosWorkFit,NegWorkFit] = WorkComputation(PowerFit,i,LStart,LEnd,nLcyc,RStart,REnd,nRcyc)
for cL = 1 : nLcyc
    div = 100;
    for l = 1 : length(PowerFit(i).left.cycle(cL).data)
        for p = 1 : 3
            pospower = PowerFit(i).left.cycle(cL).data(l).parameter(p,:);  
            for t=1:length(pospower)
                if pospower(t)<0
                    pospower(t)=0;
                end
            end
            poswork = sum(pospower())*(LEnd(cL)-LStart(cL))/100/(div-1);
            PosWorkFit(i).left.cycle(cL).data(l).name = PowerFit(i).left.cycle(cL).data(l).name;
            PosWorkFit(i).left.cycle(cL).data(l).parameter(p,:) = poswork;
                
        end
    end
end
for cR = 1 : nRcyc
    div = 100;
    for l = 1 : length(PowerFit(i).right.cycle(cR).data)
        for p = 1 : 3
            pospower = PowerFit(i).right.cycle(cR).data(l).parameter(p,:);  
            for t=1:length(pospower)
                if pospower(t)<0
                    pospower(t)=0;
                end
            end
            poswork = sum(pospower)*(REnd(cR)-RStart(cR))/100/(div-1);
            PosWorkFit(i).right.cycle(cR).data(l).name = PowerFit(i).right.cycle(cR).data(l).name;
            PosWorkFit(i).right.cycle(cR).data(l).parameter(p,:) = poswork;
                
        end
    end
end
end