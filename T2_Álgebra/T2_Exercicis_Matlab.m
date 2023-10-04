%% TEMA 2. EXERCICIS MATLAB. ÀLGEBRA LINEAL

%% NOM I COGNOMS DELS MEMBRES DEL GRUP
%Membre 1: Òscar Julián Ponte
%Membre 2: Elena Comadrán de Barnola
%Membre 3: Raúl Pérez García
%Grup: C

%% SOLUCIÓ ALS EXERCICIS
%Exercici 1.
a = [2 1 3; 1 1 1; 1 2 -1];
b = [13; 6; 2];
c = inv(a);
x = c*b

%Exercici 2.
d = [1 1; 2 2];
e = [3; 2];
f = inv(d)

%Exercici 3. 
g = [3 -4; 2 4];
h = [-6; 16];
i = inv(g);
z = i*h

m = -6:0.01:6;
n = (3*m+6)/4;
plot(m,n)
n2 = (16-2*m)/4;
plot (m,n2)
grid on
hold on
plot(m,n)


