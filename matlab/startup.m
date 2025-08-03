% startup.m - MATLAB Starter Script
%
% Description:
% This is a basic starter script for MATLAB in research projects.
% It demonstrates loading data, simple processing, plotting results,
% and saving outputs.
%
% Usage:
% Run this script to see a typical workflow skeleton for MATLAB research code.

%% Clear workspace and command window
clear; close all; clc;

%% Setup logging (simple console output)
disp('Starting MATLAB analysis script...');

%% Load or generate some data
% Replace with your own data loading logic
t = linspace(0, 10, 100); % time vector
signal = sin(2*pi*0.5*t) + 0.5*randn(size(t)); % simulated noisy signal

disp('Data loaded/generated.');

%% Process data
% Example: simple moving average filter
windowSize = 5;
filteredSignal = movmean(signal, windowSize);

disp('Data processed with moving average filter.');

%% Plot results
figure;
plot(t, signal, 'b-', 'DisplayName', 'Original Signal');
hold on;
plot(t, filteredSignal, 'r-', 'LineWidth', 2, 'DisplayName', 'Filtered Signal');
xlabel('Time (s)');
ylabel('Amplitude');
title('Signal Processing Example');
legend('show');
grid on;

disp('Plot generated.');

%% Save results to file
outputFilename = 'processed_signal.mat';
save(outputFilename, 't', 'signal', 'filteredSignal');
disp(['Results saved to ', outputFilename]);

%% Script complete
disp('MATLAB script completed successfully.');
