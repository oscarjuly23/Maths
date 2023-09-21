%% ESTADÍSTICA I ANÀLISI MATEMÀTICA. PRÀCTICA 2. CURS 2021-2022
%% Noms i cognoms dels membres del grup:
    %%Membre 1: Oriol Guimó
    %%Membre 2: Oscar Julian
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% EXERCICI 1
clear all, close all, clc
%% a) Crea un array que contingui les 10 * N tecles que s'han premut per generar N seqüències.
    clc;

    %Creem les constants de les N seqüències.
    N1 = 1000;
    N2 = 100000;
    N3 = 1000000;

    %Creem una constant del num de botons i combinació d'elements.
    butt = 4; %quadrat = Q, triangle = T, creu = X, cercle = O.
    i = 10;
    %Creem Les arrais que contenen 10 * N tecles.
    Arr1 = randi(butt,i,N1);
    Arr2 = randi(butt,i,N2);
    Arr3 = randi(butt,i,N3);

%% b) Calcula la puntuació mitjana obtinguda amb aquestes N combinacions.

    avgScore1 = 1*(Arr1 == 1) -1/3*(Arr1 ~=1);
    avgScore2 = 1*(Arr2 == 1) -1/3*(Arr2 ~=1);
    avgScore3 = 1*(Arr3 == 1) -1/3*(Arr3 ~=1);

    %Assumim que so hi ha una tecla correcta.
    res1 = mean(mean(avgScore1))
    res2 = mean(mean(avgScore2))
    res3 = mean(mean(avgScore3))
 %% c) Calcula numericament la puntuació esperada usant una binomial.

    %Provem amb les tres seqüències diferents.
    score1 = binornd(i,0.25,1,N1);
    score2 = binornd(i,0.25,1,N2);
    score3 = binornd(i,0.25,1,N3);

    Avg1 = mean((score1-1/3*(i-score1))/i)
    Avg2 = mean((score2-1/3*(i-score2))/i)
    Avg3 = mean((score3-1/3*(i-score3))/i)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% EXERCICI 2
clear all, close all, clc
%% a) Arrays de mostres Gaussianas.

    N = 1000000;

    prompt = 'Valor mitjana (muX):';
    muXUser = input(prompt);
    prompt = 'Valor desviació típica (sgX):';
    sgXUser = input(prompt);
    prompt = 'Valor mitjana (muY): ';
    muYUser = input(prompt);
    prompt = 'Valor desviació típica (sgY):';
    sgYUser = input(prompt);

    X = normrnd(muXUser,sgXUser,1,N);
    Y = normrnd(muYUser,sgYUser,1,N);

%% b) Distribucions de Gauss (histogrames).

    bins = 100;

    figure('Name', "Exercici 2B")
    hist(X,bins);
    title('Distribució X')
    xlabel('X (Mu)'); ylabel('Y (Sigma)');
    legend('Histograma');

    figure('Name', "Exercici 2B")
    hist(Y,bins);
    title('Distribució Y')
    xlabel('X (Mu)'); ylabel('Y (Sigma)');
    legend('Histograma');

%% c) Calcula la probabilitat de que un tret impacti dintre el quadrat vermell.

    X = normrnd(0,2,1,N);
    Y = normrnd(0,2,1,N);

    nImpactes = (X>=-1).*(X<=1).*(Y>=-1).*(Y<=1);

    %Mitjana d'impactes entre numero total.
    prob = (sum(nImpactes)/N) %Regla de Laplace

%% d) Disseny d'armes.

    trets = 20;

    % Arma A

    muAX = 0;
    muAY = 0;

    sgAX = 3;
    sgAY = 1;

    XA = normrnd(muAX,sgAX,1,trets);
    YA = normrnd(muAY,sgAY,1,trets);

    pintaDiana
    plot(XA,YA,'r+');
    title('Diana A')

    % Arma B
    muBX = 0;
    muBY = 0;

    sgBX = 2;
    sgBY = 2;

    XB = normrnd(muBX,sgBX,1,trets);
    YB = normrnd(muBY,sgBY,1,trets);

    pintaDiana
    plot(XB,YB,'r+');
    title('Diana B')

    % Arma C
    muCX = 0;
    muCY = 0;

    sgCX = 1;
    sgCY = 2;

    XC = normrnd(muCX,sgCX,1,trets);
    YC = normrnd(muCY,sgCY,1,trets);

    pintaDiana
    plot(XC,YC,'r+');
    title('Diana C')
