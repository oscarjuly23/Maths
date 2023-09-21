%Alumne 1 : Oscar Julian
%Alumne 2 : Raul Perez
%Grup Classe: C
%MATLAB/OCTAVE: MATLAB
%Data: 
%--------------------------------------------------- 
clear all 
close all
clc
%---------------------------------------------------
%Getting vector of the image profile 
perfilmont = getprofile();
%Getting data of the filming point
prompt = {'Enter film x point :','Enter film y point:','type of interpolation'};
title = 'Input';
dims = [1 35];
definput = {'425','1000','linear'};
answer = inputdlg(prompt,title,dims,definput);
xend = str2num(answer{1});
yend = str2num(answer{2});
type = answer{3};
%---------------------------------------------------
% Code
    %Buscar Màxims i Mínims
    yd = derivada(perfilmont,1);
    Xmax = find(yd == 0);
    xperfil = 1:1:length(perfilmont);
    yd1 = derivada(yd, 1);
    
    Xmax(1) = 0;
    Ymax(1) = 50;
    
    for i=2:1:length(Xmax)
        if Xmax(i) > 0
            Ymax(i) = perfilmont(Xmax(i)) + 250;
        else
            Ymax(i) = perfilmont(Xmax(i)) + 250;
        end
    end
    
    Xmax(length(Xmax) + 1) = xend;
    Ymax(length(Ymax) + 1) = yend;
    
    
    subplot (111), area(xperfil, perfilmont)
    hold on
    plot (Xmax, Ymax, '.r')
    
    punts = 1:1:xend;
    inter = interp1(Xmax, Ymax, punts, type);
    
    plot (punts, inter)
    
    %Calculem la longitud
    long = intlong(inter);
    disp('Longitud del recorregut')
    disp(long)
    
    %Calculem l'area
    sol = inttrapezis(inter,1);
    disp('Area per metode dels trapezis:')
    disp(sol)
    
    
%--------------- Que be, ja nomes queda una practica ------------------