% Este programa permite encender un led mediante Matlab empleando una
% placa arduino tipo Mega2560
clear all
close all
clc

%% Configuracion de la placa

a = arduino ('COM3','Mega2560');

    % Configuracion del pin deseado
    
    PinLed = 'D13';

%% Pequeño loop para encender y apagar el led

for i=0:1:10
    writeDigitalPin(a,PinLed,rem(i,2))
    pause (1);
end
