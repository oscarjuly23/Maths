function [accuracy, losses] = prac1_MAT (dataset, percentatge_entrenament, alfa, epochs, algorisme, batch_size)

%% NOM I COGNOMS DELS MEMBRES DEL GRUP:
%MEMBRE 1:
%MEMBRE 2:
%MEMBRE 3:

%% SOFTWARE DE DESENVOLUPAMENT (Matlab/Octave, versió): 

% MATLAB

%% ESCRIVIU EL VOSTRE CODI A CONTINUACIÓ:
load(dataset)

m1 = size(Y(Y== 1),1); 
m0 = size(Y(Y== 0),1); 
idx1 = randperm(m1)  ;
idx0 = randperm(m0)  ;

X0 = X(find(Y == 0),:);
X1 = X(find(Y == 1),:);
Y0 = Y(find(Y == 0),:);
Y1 = Y(find(Y == 1),:);

XTrain = [X0(idx0(1:round(percentatge_entrenament*m0)),:); X1(idx1(1:round(percentatge_entrenament*m1)),:)]; 
XTest = [X0(idx0(round(percentatge_entrenament*m0)+1:end),:); X1(idx1(round(percentatge_entrenament*m1)+1:end),:)];
YTrain = [Y0(idx0(1:round(percentatge_entrenament*m0))); Y1(idx1(1:round(percentatge_entrenament*m1)))]; 
YTest = [Y0(idx0(round(percentatge_entrenament*m0)+1:end)); Y1(idx1(round(percentatge_entrenament*m1)+1:end))];
    
XTrain = [ones(size(XTrain,1),1), XTrain];
XTest = [ones(size(XTest,1),1), XTest]; 
W = zeros(1,size(XTrain,2));

if strcmp(algorisme, 'gd')
    X = XTrain;
    Y = YTrain;
    for i = 1: epochs
        losses(i) = (W*X'-Y')*(W*X'-Y')'/size(X,1);          
        W = W -alfa*(2*(W*X'*X -Y'*X))/size(X,1); 
    end           
end

if strcmp(algorisme, 'sgd')
    ind = randi([1 length(YTrain)],1,batch_size);
    X = [XTrain(ind,1), XTrain(ind,2), XTrain(ind,3)];
    Y = YTrain(ind);
    for i = 1: epochs                 
        losses(i) = (W*X'-Y')*(W*X'-Y')'/size(X,1);  
        W = W -alfa*(2*(W*X'*X -Y'*X))/size(X,1);   
    end           
end

Xout = W*XTest';
Xout(Xout>=0.5) = 1;
Xout(Xout<0.5) = 0;
accuracy = sum(Xout==YTest')/length(YTest)*100;