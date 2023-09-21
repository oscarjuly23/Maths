%% PRACTICA 4
% Oscar Julián Ponte
% Oriol Guimó Morell
%Grup Classe: D & E
%Versi? MATLAB: R2019b
%Data: 22/05/2020
%% CODIGO ---------------------------------------------

% SCRIPT de Mostra

%Grafica 1
[mordorTime, mordorInfectats] = SIR(1000, 0.7, 0.05, 'Mordor');

%Grafica 2
[gondorTime, gondorInfectats] = SIR(1000, 0.3, 0.05, 'Gondor');

%Grafica 3
[comarcaTime, comarcaInfectats] = SIR(1000, 1, 0.05, 'La Comarca');

%Grafica 4
[rhovanionTime, rhovanionInfectats] = SIR(1000, 0.2, 0.05, 'Rhovanion');

%Gràfica comparativa de la curva de infectats:
figure('Name','Gràfica 2','NumberTitle','off');

plot(mordorTime, mordorInfectats);
xlabel('t (temps)'); ylabel('x (individus)');
hold on

plot(gondorTime, gondorInfectats);
xlabel('t (temps)'); ylabel('x (individus)');
hold on

plot(comarcaTime, comarcaInfectats);
xlabel('t (temps)'); ylabel('x (individus)');
hold on

plot(rhovanionTime, rhovanionInfectats);
ylim([0 1000]);
title('Infectats Tierra Media');
legend('Mordor', 'Gondor', 'La Comarca', 'Rhovanion');
xlabel('t (temps)'); ylabel('x (individus)');

%L'usuari escolleix quin dia vol consultar
prompt = {'Introdueix el número de dia a consultar:'};
dlgtitle = 'Quin dia?';
dims = [1 50];
answer = inputdlg(prompt,dlgtitle,dims);
dia = str2double(answer);

%Mostrem el mapa
hola = figure('Name','Mapa','NumberTitle','off');
a = imread('map.jpg');
imshow(a);
hold on

%Codi per printar els cercles de infectats

%MORDOR
x_pos = 1052;   %Posición X
y_pos = 761;    %Posicion Y
r = mordorInfectats(dia)/5; %Radio
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x_pos;
yunit = r * sin(th) + y_pos;
figure(hola)
plot(xunit, yunit);
h = fill(xunit, yunit, 'r'); %Relleno circulo
set(h,'facealpha',.5) %Control opacidad

%GONDOR
x_pos = 642;   %Posición X
y_pos = 741;    %Posicion Y
r = gondorInfectats(dia)/5; %Radio
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x_pos;
yunit = r * sin(th) + y_pos;
figure(hola)
plot(xunit, yunit);
h = fill(xunit, yunit, 'r'); %Relleno circulo
set(h,'facealpha',.5) %Control opacidad

%LA COMARCA
x_pos = 360;   %Posición X
y_pos = 275;    %Posicion Y
r = comarcaInfectats(dia)/5; %Radio
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x_pos;
yunit = r * sin(th) + y_pos;
figure(hola)
plot(xunit, yunit);
h = fill(xunit, yunit, 'r'); %Relleno circulo
set(h,'facealpha',.5) %Control opacidad

%RHOVANION
x_pos = 868;   %Posición X
y_pos = 367;    %Posicion Y
r = rhovanionInfectats(dia)/5; %Radio
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x_pos;
yunit = r * sin(th) + y_pos;
figure(hola)
plot(xunit, yunit);
h = fill(xunit, yunit, 'r'); %Relleno circulo
set(h,'facealpha',.5) %Control opacidad
