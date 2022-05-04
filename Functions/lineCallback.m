function lineCallback(src,~)
    info.name = src.DisplayName;
    save('temp.mat','-struct','info');
end