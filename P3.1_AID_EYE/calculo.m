%Alumne 1: Elena Comadran de Barnola
%Alumne 2: Òscar Julián Ponte
%Alumne 3: Raúl Pérez García
%Grup Classe: C
%MATLAB/OCTAVE: MATLAB 
%Data: 20/12/18
%---------------------------------------------------
%Variables 
clear all 
close all
clc
load('funcionsposicions.mat')
a = 0;       %Punto central analisis Taylor
s = -1;      %inicio del tramo continuo 
e = 1;       %fin del tramo continuo 
n = 2;       %grado al que queremos aproximar
h = 0.01;    %Resolucion grafica
valors = funcpos2; %valors carregats als motors


%---------------------------------------------------
%Código figura 1 y 2
x = s:h:e;
x = x(2:length(x) - 1);
vel = cos(pi * x) + 1; %VELOCIDAD MÁXIMA
yd = derivada(valors,h); %VELOCIDAD REAL
dif = abs(vel-yd); %DIFERENCIA

grau = n;
drvx = s + (h * n):h:e - (h * n);
ydn = derivadan(valors,h,grau);
valors = valors(2:length(valors) - 1);


%Velocidad 
figure (1)
subplot(311), plot (x,vel), title('Función Max velocitat');
subplot(312), plot (x,yd), title('Velocidad real');
subplot(313), area (x,dif), title('Test');

%Implementación acceleración con derivada enésima
figure (2)
subplot(311), plot (x,valors), title('Valores');
subplot(312), plot (x,yd), title('Velocidad');
subplot(313), plot (drvx,ydn), title('Acceleración');

%Implementación de Taylor
for i = 1:n
    xaux = a - (i * h):h:a + (i * h);
    valoraux = cos(pi * xaux) + 1;
    fda(i) = derivadan(valoraux,h,i);
end

indice = 1;

for x = s:h:e
    taylor(indice) = cos(pi * a) + 1;
    for i = 1:n
        taylor(indice) = taylor(indice) + (fda(i) * (x - a)^i) / factorial(i);
    end
    indice = indice + 1;
end

figure (3);

x = s:h:e;
vel = cos(pi * x) + 1;
subplot(121), plot (x, vel, x, taylor), title ('Gràfica Taylor vs Original');

subtract = abs(taylor - vel);
subplot (122), area (x, subtract), title ('Gràfica Error');

%-----------------------SI HEMOS LLEGADO, EL FIN----------------------------