clear all; close all; clc;

% Listen
files = {'ak47_train.wav', 'm4a1-s_train.wav', 'awp_train.wav', 'desert_eagle_train.wav'};
names = {'AK-47', 'M4A1-S', 'AWP', 'Desert Eagle'};
colors = {'r', 'b', 'g', 'c'};


for i = 1:4

    % Audio laden
    [audio, fs] = audioread(files{i});
    x = audio(:, 1);
    
    
    % Zeitvektor
    N = length(x);
    dt = 1 / fs;
    t = 0:dt:(N-1)*dt;
    
    % FFT & Skalierung
    X = fft(x);
    X = 2 * abs(X) / N;
    X(1) = X(1) / 2;
    
    df = fs / N;
    f = 0:df:fs/2;
    P = X(1:length(f));
    
    % Peak
    [max_wert, index] = max(P);
    peak_freq = f(index);
    
    % Aufteilung in 2 fenstern
    if i <= 2
        figure(1)                       % AK und M4 in Fenster 1
        zeile = i;                      
    else
        figure(2)                       % AWP und Deagle in Fenster 2
        zeile = i - 2;                  
    end
    
    % Plot Zeitbereich 
    subplot(2, 2, 2*zeile - 1)
    plot(t, x, colors{i})
    title([names{i} ' - Zeitbereich'])
    xlabel('{\itt} / s')
    ylabel('{\itx(t)}')
    xlim([0,4]);
    grid
    
    % Plot Spektrum 
    subplot(2, 2, 2*zeile)
    plot(f, P, colors{i})
   title(['Amplitudenspektrum (f_{max}=' num2str(round(peak_freq)) 'Hz)'])
    xlabel('{\itf} / Hz')
    ylabel('|{\itX(f)}|')
    xlim([0 4000])
    ylim([0 0.005])
    grid
end