%% Problema 3
[accuracy, losses] = prac1_MAT('data4',0.5,0.001,100,'sgd',5);
figure()
plot(losses);
xlabel('epoques');
ylabel('erros');
ylim([0 1])

[accuracy, losses] = prac1_MAT('data4',0.5,0.001,100,'sgd',10);
figure()
plot(losses);
xlabel('epoques');
ylabel('erros');
ylim([0 1])

[accuracy, losses] = prac1_MAT('data4',0.5,0.001,100,'sgd',20);
figure()
plot(losses);
xlabel('epoques');
ylabel('erros');
ylim([0 1])
accuracy

[accuracy, losses] = prac1_MAT('data4',0.5,0.001,100,'sgd',50);
figure()
plot(losses);
xlabel('epoques');
ylabel('erros');
ylim([0 1])
accuracy