%Alumne 1: Oscar Julian
%Alumne 2: Raúl Pérez
%Grup Classe: 1r C
%MATLAB/OCTAVE: MATLAB
%Data: 20/05/2019
%---------------------------------------------------------------- 
clear all 
close all
clc
%----------------------------------------------------------------
%Getting data of the filming point
prompt = {'Introduce la velocidad de despegue :'};
title = 'Input';
dims = [1 40];
definput = {''};
answer = inputdlg(prompt,title,dims,definput);
vel_despegue = str2double(answer{1});
%----------------------------------------------------------------
%Constantes del codigo 
r = 6371000; %radio de la tierra (m)
g = 9.81; %gravedad
a = r; %Punto incial Y 
b = 100*r; %Punto final Y
M = 1000; % Numero de pasos 
V0 = 25000; % Velocidad inicial (m/s)
%----------------------------------------------------------------
%Codigo
k = g * (r^2);
C = ((V0^2)/2)-(k/a);

y = dsolve('Dv = -(k/((y^2)*v))','y');
simplify (y(1));
pretty(y(1));

h = (b-a)/M;
i = a:h:b;

v = sqrt(2)*sqrt(C + (k./i));

plot (i, v)

for n = 1:M
    v(n+1) = v(n) + h *(-(k./((i(n)^2)*v(n)))) ;
end

figure(1)
hold on
plot (i ,v)

legend('Original','Metodo euler')
xlabel('Y position')
ylabel('Velocity')

imatge1 = imread('img1.png');
imatge2 = imread('img2.png');


b2 = (a+100);
h2 = (b2-a)/M;
i2 = a:h2:b2;
i_foto = 100;

C_foto = ((vel_despegue^2)/2)-(k/a);
v_foto = sqrt(2)*sqrt(C_foto + (k/i2(i_foto)));

figure(2)
if v_foto < 2.495*exp(4)
    imshow(imatge1);
else
    imshow(imatge2);
end

%----------------------------------------------------------------
%Que bien por fin se ha terminado el dolor de cabeza con Matlab! 
%----------------------------------------------------------------