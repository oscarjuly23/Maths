%% Problema 1 Simulaciones

[accuracy, losses] = prac1_MAT('data1',0.5,0.1,100,'gd',10);

figure()
plot(losses);
%%%%%%%%%%%%%%%%%%%%%%%% ES MODIFICABLE LOS NOMBRES DE LA FIGURA
xlabel('epoques');
ylabel('erros');
%%%%%%%%%%%%%%%%5
disp(losses(10));

[accuracy, losses] = prac1_MAT('data1',0.5,0.01,100,'gd',10);
figure()
%%%%%%%%%%%%%%%%%%%%%%%% ES MODIFICABLE LOS NOMBRES DE LA FIGURA
plot(losses);
xlabel('epoques');
ylabel('erros');
disp(losses(10));


[accuracy, losses] = prac1_MAT('data1',0.5,0.001,100,'gd',10);
figure()
%%%%%%%%%%%%%%%%%%%%%%%% ES MODIFICABLE LOS NOMBRES DE LA FIGURA xlabel y
%%%%%%%%%%%%%%%%%%%%%%%% label
plot(losses);
xlabel('epoques');
ylabel('erros');
disp(losses(10));


[accuracy, losses] = prac1_MAT('data1',0.5,0.0001,100,'gd',10);
figure()
%%%%%%%%%%%%%%%%%%%%%%%% ES MODIFICABLE LOS NOMBRES DE LA FIGURA
plot(losses);
xlabel('epoques');
ylabel('erros');
disp(losses(10));