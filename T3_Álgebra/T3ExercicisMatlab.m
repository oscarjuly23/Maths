%% TEMA 3. EXERCICIS MATLAB. ÀLGEBRA LINEAL

%% NOM I COGNOMS DELS MEMBRES DEL GRUP
%Raúl Pérez García
%Òscar Julián Ponte
%Elena Comadran

%Grup: C

%% SOLUCIÓ ALS EXERCICIS
%Exercici 1.
a = [2 1 1];
b = [3 1 0];
c = [5 1 -2];

B = sym([ a; b; c]) ;
dB = det(B)
% Com el determinant és '0', els vectors 'a', 'b' i 'c' no són
% linealment independents per tant no són base de R3. Són
% generadors però no la Base.


%Exercici 2.
d = [0 0 1];
B1 = sym([ a; b; d]) ;
x = [ 1; 2; 3 ] ;
n = length(B1);
y = zeros(n,1);
for i = n:-1:1
    y(i)=(x(i)-B1(i,i+1:n)*y(i+1:n))/B1(i,i);
end
disp (y)

% Veiem que quan construim la matriu de canvi de base de C
% a B1 ens queda la mateixa matriu degut a que el vector x
% ja el tenim en Base Canònica.

%Exercici 3. 
p = [3; -2];
B2 = [1 2 0 1 ; 2 1 1 1];
n = length(p);
z = zeros(n,1);
for i = n:-1:1
    z(i)=(p(i)-B2(i,i+1:n)*z(i+1:n))/B2(i,i);
end
disp (z)

%Exercici 4. 
            
B3 = [ 2 0 0 0; 1 1 0 0; 1 -1 1 0; 1 2 1 -1];
s = [ 6 3; 5 -3] ;
n = length(B3);
t = zeros(n,1);
for i = n:-1:1
    t(i)=(s(i)-B3(i,i+1:n)*t(i+1:n))/B3(i,i);
end
disp (t)

B4 = [1 -1 0 0; 1 1 -1 0; 0 0 0 1; 0 1 0 1];
n = length(B4);
c = zeros(n,1);
for i = n:-1:1
    c(i)=(t(i)-B4(i,i+1:n)*c(i+1:n))/B4(i,i);
end
disp (c)
