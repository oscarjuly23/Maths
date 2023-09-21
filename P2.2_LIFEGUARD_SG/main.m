%Jose Maria Valls Salat
%Oscar Julián Ponte
%Grup Classe: D
%MATLAB/OCTAVE: MATLAB R2019b
%Data: 23/12/2019

% Ja que en el enunciat demana que entreguem només els algoritmes main.m, derivada.m, derivada2.m
% Cal posar el 'valorsensores1.mat' per al seu correcte funcionament.
%---------------------------------------------------
%Variables 
clear all 
close all
clc
load('valorsensores1.mat')
sensor = sensor1;
h = 2;

%---------------------------------------------------
%Codi 

pDerivada = derivada(sensor, h);
sDerivada = derivada2(sensor, h);
x = 1:2:length(sensor)*2;

subplot(4,1,1);

plot(x,sensor);

title("Presió")
x = 1:2:length(pDerivada)*2; 
subplot(4,1,2);
plot(x,pDerivada);

title("Velocitat")
x = 1:2:length(sDerivada)*2; 
subplot(4,1,3);
plot(x,sDerivada);

title("Aceleració")
assaig = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
peak_prueba = peak2peak(assaig);
i = 1;
y = 6;

while i <= ((length(assaig)/5)-1)

 y = y:1:y+4;
 media(i) = meansqr(assaig(y));
 peak(i) = peak2peak(assaig(y)); 
 i = i+1;
 y = y+5;

end

media;
peak;
i = 2;
y = 6;
avg_vel(1) = 0; 
peak_acel(1) = 0;
probSucces(1) = 0;

while i <= ((length(pDerivada)/5))
 y = y:1:y+4;
 avg_vel(i) = meansqr(pDerivada(y));
 peak_acel(i) = peak2peak(sDerivada(y));
 probSucces(i) = 0.5 * meansqr(pDerivada(y)) + 0.5 * peak2peak(sDerivada(y));

 if probSucces(i) < 100

     Succes(y) = 1;

 end
  if probSucces(i) > 100 & probSucces(i) < 500

     Succes(y) = 2;

  end

  if probSucces(i) > 500

      Succes(y) = 3;

  end

 i = i+1;

 y = y+5;

end

avg_vel;

peak_acel;

probSucces;

Succes;

length(Succes);

x = 1:2:length(Succes)*2;

subplot(4,1,4);

plot(x,Succes);

title("Estat del mar")

%-----------------------SI HEMOS LLEGADO, EL FIN----------------------------
