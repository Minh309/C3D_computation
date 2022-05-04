function EMG_Linear = get_EMG_envelope(EMG,Freq,Lowpass,Highpass)
    % Lowpass filter 500Hz
    NyqFreq = Freq/2;
    Wn = Lowpass/NyqFreq;
    [B,A] = butter (4,Wn,'low');
    % run filter
    EMG_low_filtered = filtfilt(B,A,EMG);
    % Highpass filter 10Hz
    Wo = Highpass/NyqFreq;
    [D,C] = butter (4,Wo,'high');
    % run filter
    EMG_high_filtered = filtfilt(D,C,EMG_low_filtered);
    % Full wave rectification of EMG
    EMG_filtered = abs(EMG_high_filtered);
    %Convert to mV
    EMG_filtered = 1000*EMG_filtered;
    % Linear envelope (6Hz lowpass)
    LP = 6;
    Wp = LP/NyqFreq;
    [F,E] = butter (4,Wp,'low');
    EMG_Linear = filtfilt(F,E,EMG_filtered);
    EMG_Linear = EMG_Linear/max(EMG_Linear);
end