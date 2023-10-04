%% TEMA 1. EXERCICIS MATLAB. ÀLGEBRA LINEAL

%% NOM I COGNOMS DELS MEMBRES DEL GRUP
%Membre 1: Òscar Julián Ponte
%Membre 2: Elena Comadrán de Barnola
%Membre 3: Raúl Pérez García
%Grup: C

%% SOLUCIÓ ALS EXERCICIS
%Exercici 1.
B = [ 1 1 2 3; 5 8 13 21; 33 56 89 145]
a=[B(1,1),B(2,2),B(3,3)]
b=[B(1,4),B(2,3),B(3,1)]
c=[B(1,3);B(3,4);B(1,2)]

%Exercici 2.
A = [ 1 61 80 ; 33 98 87 ; 49 89 48 ]
d = det(A)
    
%Exercici 3.
C = [ 1 2 3 2 ; 2 5 7 3 ; 8 9 1 4 ; 3 2 6 5 ]
D = [ 44 11 12 45 ; 44 11 12 45 ; 44 11 12 45 ]

%Apartat A
y = inv(C)
%Apartat B
q = y.^2
%Apartat C
m = 10.*ones(4,3)
%Apartat D
t = q*m
%Apartat E
T = round(t)
%Apartat F
f = transpose(T)


%Exercici 4.

X = randi([0,1],3)
r = rank(X)

switch (r)
    case 1,
        foto1 = imread('foto1.jpeg');
        imshow(foto1)
    case 2,
        foto2 = imread('foto2.jpeg');
        imshow(0.2.*foto2)
    case 3,
        foto3 = imread('foto3.jpeg');
        XG = rgb2gray(foto3);
        imshow(XG)     
end
    
%Exercici 5.
Y = [ 1 2 3 ; 3 5 6 ; 3 1 7 ]
in = inv(Y)
i = Y*in

