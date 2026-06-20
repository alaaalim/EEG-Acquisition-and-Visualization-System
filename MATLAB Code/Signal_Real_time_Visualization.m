%% MATLAB real-time plot for ADS1115
clc; clear; close all;

% Serial port and settings
port = "/dev/cu.usbmodem214101";   % Arduino port (macOS)
baud = 9600;                        % must match Arduino Serial.begin()
fs = 250;                            % sampling frequency (Hz)
window = 5;                          % plot window in seconds
bufferLength = fs * window;          % number of samples in window

% Close any existing serial connections on this port
existingPorts = serialportlist("available");
if any(existingPorts == port)
    % If port is already open in MATLAB, close it
    warning('Port is already in use. Make sure no other session is using it.');
end

% Open serial port
s = serialport(port, baud);

% Configure terminator for reading lines
configureTerminator(s,"LF");

% Pre-allocate data buffer
voltageBuffer = zeros(1, bufferLength);
timeBuffer = linspace(-window, 0, bufferLength);

% Create figure for real-time plot
hFig = figure('Name','ADS1115 Real-Time Plot');
hLine = plot(timeBuffer, voltageBuffer);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('ADS1115 Channel 1');
ylim([0 5]);      % adjust based on expected voltage range
grid on;

% Start real-time loop
disp('Starting real-time plotting...');
while ishandle(hFig)
    try
        % Read one line from Arduino
        line = readline(s);
        
        % Parse the voltage from the line
        % Example Arduino line: "Raw: 4321  Voltage: 0.54"
        tokens = split(line);
        idx = find(strcmp(tokens,"Voltage:"),1);
        if ~isempty(idx)
            voltage = str2double(tokens{idx+1});
            
            % Shift buffer and append new value
            voltageBuffer = [voltageBuffer(2:end), voltage];
            
            % Update plot
            set(hLine,'YData',voltageBuffer);
            drawnow limitrate;
        end
    catch ME
        warning('Serial read error: %s', ME.message);
    end
end

% Close serial port when figure is closed
clear s;
disp('Serial port closed.');