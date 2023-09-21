%% PRACTICA 4
% Oscar Juli�n Ponte
% Oriol Guim� Morell
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

%Gr�fica comparativa de la curva de infectats:
figure('Name','Gr�fica 2','NumberTitle','off');

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
prompt = {'Introdueix el n�mero de dia a consultar:'};
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
x_pos = 1052;   %Posici�n X
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
x_pos = 642;   %Posici�n X
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
x_pos = 360;   %Posici�n X
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
x_pos = 868;   %Posici�n X
y_pos = 367;    %Posicion Y
r = rhovanionInfectats(dia)/5; %Radio
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x_pos;
yunit = r * sin(th) + y_pos;
figure(hola)
plot(xunit, yunit);
h = fill(xunit, yunit, 'r'); %Relleno circulo
set(h,'facealpha',.5) %Control opacidad


%% PREGUNTES ----------------------------------------------

% LES TRES EDOS:

% 1)  -?SI ? -(?)eta * (S)usceptibles * (I)nfectats
% En aquesta equaci� trobem que la Beta �s negativa, ja que amb l�increment d�aquesta cada cop hi hauran menys persones susceptibles.
% Aquesta beta �s la probabilitat de contagi entre el nombre d�habitants, per tant com m�s es propagui el virus aquesta ser� m�s gran.
% Ho multipliquem per les persones susceptibles i per al nombre d�infectats. Aquesta operaci� far� que cada vegada aquest resultat sigui m�s baix,
% ja que hi haur� gent que passar� de ser susceptible a infectada, per� tamb� hi haur� gent que no arribar� a estar infectada i potser morir� per causes externes.

% 2) +�SI-?I ? +(?)eta * (S) usceptibles * (I)infectats � (?)amma * (I)nfectats
% En aquesta multipliquem la taxa de transmissi� per al nombre d�infectats i per als susceptibles, aix� es degut a que com m�s infectats amb certa taxa de transmissi�,
% cada vegada tindrem m�s susceptibles que estaran infectats. Alhora tenim una resta que �s la taxa de recuperaci� pels infectats, d�aquests infectats,
% hi haur� un percentatge que es recuperar� per aix� es multiplica per aquesta taxa.

% 3) ?I ? (?)amma * (I)nfectats
% Per �ltim tenim la equaci� dels recuperats que com em vist a l�anterior, directament �s la taxa de recuperaci� per al nombre de infectats.



% RESULTATS GR�FIQUES

% Analitzarem la gr�fica de Mordor per exemple. En aquesta podem veure que tenim tres segments diferents com es obvi,
% ja que la blava representa als individus susceptibles,la taronja als infectats i la groga als recuperats.
% Com podem comprovar, tant els infectats com els recuperats comencen a zero i els susceptibles a mil, aix� es segut a que el virus encara no s�ha manifestat.
% En deu dies posteriorment al inici del virus ja podem comprovar que la quantitat de gent sana va descendent i la de gent infectada est� quasi en un m�xim absolut. 
% Quan arribem als cinquanta dies veiem que la situaci� es va estabilitzant, ja no queda gent susceptible, sin� infectats o recuperats i com veiem,
% el nombre d�infectats tendeix a 0 i el nombre de recuperats tendeix a un valor molt m�s elevat.



% AN�LISI GR�FICA GENERAL INFECTATS

% Aquesta �s la gr�fica d�infectats de tota la �Tierra Media�. Com podem veure a cada pa�s, l�increment d�infectats es produ�a d�una forma diferent.
% La pregunta es perqu� es tant diferent si el virus es el mateix? Doncs b� tot aix� es degut a ,com diu l�enunciat, les mesures de contenci�.
% Amb unes mesures m�s estrictes, el que passa es que la probabilitat de contagi descendeix gradualment, ja que el virus t� molta m�s dificultat per propagar-se
% ja que si la gent no el transporta d�un lloc a un altre el virus no es pot moure per si sol.
% Com podem comprovar, la difer�ncia entre La Comarca i Rhovanion �s molt gran. A La Comparca les mesures de contenci� eren escasses,en canvi a Rhovanion eren molt
% m�s estrictes, aix� va fer que el nombre d�infectats incrementes m�s lentament (evitant una possible saturaci� de la sanitat) i tamb� que fos menor.



% MODEL SIR +

% Hem buscat informaci� sobre el model epid�mic SIRS. A l'igual que el SIR, aquest classifica la poblaci� en tres classes Susceptibles, Infecciosos i Recuperats.
% A m�s a m�s aquest tipus de model permet introduir una p�rdua de la immunitat que provoca que els individus recuperats passin a ser susceptibles novament.