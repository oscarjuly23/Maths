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

%---------------------------------------------------
%Preguntes Teóriques

% 1. A partir de la implementación de derivada.m que has hecho, ¿cómo
% implementarías un algoritmo para calcular la derivada n-ésima, es decir
% derivadan.m?
%
% Per a implementar un algoritme que calculi la derivada n-éssima el que
% hauriem de fer és tenir una variable que serà 'n' que dirà fins quin grau
% volem calcular la derivada i amb un simple for que cridi la primera funció
% de derivada.n per als valors que volem calcular ja ho tindriem.
% implementat. Aquest algoritme seria de molta utilitat per se aplicat per
% a calcular el polinomi de Taylor.


% 2. Analiza la gráfica resultante del apartado anterior (la que os haya salido a
% vosotros, no la del enunciado) indicado la bandera del mar en cada
% momento. ¿Puede existir valores a 0 en nuestra gráfica? ¿Por qué?
%
% Veiem que segons la gràfica que hem aconseguit si podria existir valors
% en 0 en algun punt.


% 3. Si la función presión tiene valores puntuales a cero, en esos puntos, ¿la
% velocidad y aceleración serán también cero? Justifica con un ejemplo.
%
% Si la funció pressió té valors puntuals a 0, això vol dir que la seva
% imarge és = 0. Quan parlem de la velocitat i l'acceleració ens referim a
% la primera i segona derivada respectivament.
% Per tant que la imatge sigui = 0 no vol dir que ni la velocitat ni la
% acceleració necessariament siguin = 0.
%
% Posem un exemple sencill: f(x) = 3x^3-9x
% f(x) --> x*(3x-9)  // treiem factor comú
% x=0 & x=1 // Anulen la funció
%
% f'(x) = (velocitat) = 9x^2-9
% x=1 & x=-1 // Anula la funció
%
% f"(x) = (acceleració) = 18x
% x=0 // Anula la funció
%
% Comprovem que encara que f(x) tingui valors puntulars a 0 no vol dir que
% la velocitat i/o la acceleració haguin de ser de 0.


% Ja que en el enunciat demana que entreguem només els algoritmes main.m, derivada.m, derivada2.m
% Cal posar el 'valorsensores1.mat' per al seu correcte funcionament.

%-----------------------SI HEMOS LLEGADO, EL FIN----------------------------