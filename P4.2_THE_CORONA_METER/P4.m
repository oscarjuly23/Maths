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


%% PREGUNTES ----------------------------------------------

% LES TRES EDOS:

% 1)  -?SI ? -(?)eta * (S)usceptibles * (I)nfectats
% En aquesta equació trobem que la Beta és negativa, ja que amb l’increment d’aquesta cada cop hi hauran menys persones susceptibles.
% Aquesta beta és la probabilitat de contagi entre el nombre d’habitants, per tant com més es propagui el virus aquesta serà més gran.
% Ho multipliquem per les persones susceptibles i per al nombre d’infectats. Aquesta operació farà que cada vegada aquest resultat sigui més baix,
% ja que hi haurà gent que passarà de ser susceptible a infectada, però també hi haurà gent que no arribarà a estar infectada i potser morirà per causes externes.

% 2) +ßSI-?I ? +(?)eta * (S) usceptibles * (I)infectats – (?)amma * (I)nfectats
% En aquesta multipliquem la taxa de transmissió per al nombre d’infectats i per als susceptibles, això es degut a que com més infectats amb certa taxa de transmissió,
% cada vegada tindrem més susceptibles que estaran infectats. Alhora tenim una resta que és la taxa de recuperació pels infectats, d’aquests infectats,
% hi haurà un percentatge que es recuperarà per això es multiplica per aquesta taxa.

% 3) ?I ? (?)amma * (I)nfectats
% Per últim tenim la equació dels recuperats que com em vist a l’anterior, directament és la taxa de recuperació per al nombre de infectats.



% RESULTATS GRÀFIQUES

% Analitzarem la gràfica de Mordor per exemple. En aquesta podem veure que tenim tres segments diferents com es obvi,
% ja que la blava representa als individus susceptibles,la taronja als infectats i la groga als recuperats.
% Com podem comprovar, tant els infectats com els recuperats comencen a zero i els susceptibles a mil, això es segut a que el virus encara no s’ha manifestat.
% En deu dies posteriorment al inici del virus ja podem comprovar que la quantitat de gent sana va descendent i la de gent infectada està quasi en un màxim absolut. 
% Quan arribem als cinquanta dies veiem que la situació es va estabilitzant, ja no queda gent susceptible, sinó infectats o recuperats i com veiem,
% el nombre d’infectats tendeix a 0 i el nombre de recuperats tendeix a un valor molt més elevat.



% ANÀLISI GRÀFICA GENERAL INFECTATS

% Aquesta és la gràfica d’infectats de tota la ‘Tierra Media’. Com podem veure a cada país, l’increment d’infectats es produïa d’una forma diferent.
% La pregunta es perquè es tant diferent si el virus es el mateix? Doncs bé tot això es degut a ,com diu l’enunciat, les mesures de contenció.
% Amb unes mesures més estrictes, el que passa es que la probabilitat de contagi descendeix gradualment, ja que el virus té molta més dificultat per propagar-se
% ja que si la gent no el transporta d’un lloc a un altre el virus no es pot moure per si sol.
% Com podem comprovar, la diferència entre La Comarca i Rhovanion és molt gran. A La Comparca les mesures de contenció eren escasses,en canvi a Rhovanion eren molt
% més estrictes, això va fer que el nombre d’infectats incrementes més lentament (evitant una possible saturació de la sanitat) i també que fos menor.



% MODEL SIR +

% Hem buscat informació sobre el model epidèmic SIRS. A l'igual que el SIR, aquest classifica la població en tres classes Susceptibles, Infecciosos i Recuperats.
% A més a més aquest tipus de model permet introduir una pèrdua de la immunitat que provoca que els individus recuperats passin a ser susceptibles novament.