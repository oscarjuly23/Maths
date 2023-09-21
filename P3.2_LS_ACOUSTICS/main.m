%% PRACTICA 3
% Oscar Julián Ponte
% Oriol Guimó Morell
%Grup Classe: D & E
%Versi? MATLAB: R2019b
%Data: 04/04/2020
%%-----------------------------------------------------
%% Variables 
theta = linspace(0,2*pi, 50);

% Tenim una Rho per a cada figura.
rho1 = abs(0.375+0.625*cos(theta));
rho2 = abs(cos(theta));
rho3 = ones(1, length(theta));


%% CODIGO ---------------------------------------------

% POLARS
subplot(2,3,1)
polarplot (theta,rho1);
title("Cardioide")

subplot(2,3,2) 
polarplot (theta,rho2);
title("Bidireccional")

subplot(2,3,3)
polarplot(theta,3*rho3);
title("Omnidireccional")

% CARTESIANES ---------------------------------------------
subplot(2,3,4)
plot ((rho1.*cos(theta)), rho1.*sin(theta));
title("Cardioide")

subplot(2,3,5) 
plot ((rho2.*cos(theta)), rho2.*sin(theta));
title("Bidireccional")

subplot(2,3,6)
plot (3*(rho3.*cos(theta)), 3*rho3.*sin(theta));
title("Omnidireccional")

%Calculem la longitud --------------------------------------
long1 = longitudPolar(rho1);
long2 = longitudPolar(rho2);
long3 = longitudPolar(3*rho3);

disp('Longitud de la figura Cardioide:')
disp(long1)

disp('Longitud de la figura Bidireccional:')
disp(long2)

disp('Longitud de la figura Omnidireccional:')
disp(long3)

%Calculem l'area -------------------------------------------
area1 = areaPolar(rho1,(0.2*pi/5));
area2 = areaPolar(rho2,(0.2*pi/5));
area3 = areaPolar(3*rho3,(0.2*pi/5));
%%area3 = intarea(3*rho3,(pi/1000));


disp('Area de la figura Cardioide:')
disp(area1)

disp('Area de la figura Bidireccional:')
disp(area2)

disp('Area de la figura Omnidireccional:')
disp(area3)

%% PREGUNTES ----------------------------------------------

% 1.
% El mejor patrón que podemos utilizar para que se escuche en la pista
% sin molestar a los residentes es el cardioide (o supercardioide) ya que
% las ondas de sonido se propagan únicamente hacia delante, con un pequeño 
% residuo de sonido que va hacia atrás.
% Con el omnidireccional molestaríamos demasiado a los residentes i con el
% bidireccional, no les molestaríamos, pero tampoco se oiría nada en la
% pista.

% 2.
% Bajo nuestro punto de vista, creemos que si que sería más preciso 
% calcularlo con el método de los rectángulos ya que ese método es muy 
% preciso y calcula toda el área sin posibilidad de dejarse nada.
% (Riemann)

% 3.
% Area teórica = 28,2743
% Area Matlab (h=pi/10) = 70,5858
% Area Matlab (h=pi/1000) = 0,7069
% Hemos encontrado que con la resolución de h=(0.2*pi/5) és la que más se
% aproxima. 