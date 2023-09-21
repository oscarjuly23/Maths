%%%%%%%%%%%%%%%%%%%%%%%% ES MODIFICABLE LOS NOMBRES DE LA FIGURA

plot(losses);
xlabel('epoques');
ylabel('erros');
ylim([0 1])


[accuracy, losses] = prac1_MAT('data2',0.5,0.001,50,'sgd',5);
disp(accuracy)
figure()
%%%%%%%%%%%%%%%%%%%%%%%% ES MODIFICABLE LOS NOMBRES DE LA FIGURA
plot(losses);
xlabel('epoques');
ylabel('erros');
ylim([0 1])