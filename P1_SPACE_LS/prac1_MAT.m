function [accuracy, losses] = prac1_MAT (dataset, percentatge_entrenament, alfa, epochs, algorisme, batch_size)

%% NOM I COGNOMS DELS MEMBRES DEL GRUP:
%MEMBRE 1: ALBA MARTÍN
%MEMBRE 2: ROGER TORRAS
%MEMBRE 3: ÒSCAR JULIÁN

%% SOFTWARE DE DESENVOLUPAMENT (Matlab/Octave, versió):  Matlab R2020a Prerelease (9.10.0.1538726)

%% ESCRIVIU EL VOSTRE CODI A CONTINUACIÓ:

%% 1. Llegirem el fitxer de dades (dataset) i apliquem el 'truc del biaix'

file = load(dataset);

varx = [file.X,ones(size(file.X,1),1)];
vary = file.Y;
aux0 = 1;
aux1 = 1;

%% 3. Dividim en subconjunt de entrenament i test (0s i 1s)
for i = 1:size(vary,1)
    if (vary(i) == 0)
        
        vx0(aux0,:) = varx(i,:);
        vy0(aux0) = vary(i);
        aux0 = aux0+1;
        
    else 

        vx1(aux1,:) = varx(i,:);
        vy1(aux1) = vary(i);
        aux1 = aux1+1;
        
    end
end

%% 4. Calcular el tant per cent d'entrenament
percuE = percentatge_entrenament/100;
percmEt0 = percuE * size(vx0,1);
percmEt1 = percuE * size(vx1,1);

%% Creem matrius de entrenament:
for i = 1:percmEt0
    
    mEx0(i,:) = vx0(i,:);
    mEy0(i) = vy0(i);
    
end

for i = 1:percmEt1
    
    mEx1(i,:) = vx1(i,:);
    mEy1(i) = vy1(i);
    
end

mEx = [mEx0;mEx1];
mEy = [mEy0,mEy1];

%% 6. Creem matrius de testeig

%Calcular tanto por ciento de test
percTt0 = size(vx0,1) - percmEt0;
percTt1 = size(vx1,1) - percmEt1;

%Crear matrices de testeo
for i = 1:percTt0
    
    mTx0(i,:) = vx0(i,:);
    mTy0(i) = vy0(i);
    
end

for i = 1:percTt1
    
    mTx1(i,:) = vx1(i,:);
    mTy1(i) = vy1(i);
    
end

mTx = [mTx0;mTx1];
mTy = [mTy0,mTy1];

%Creem W (vector de pesos)
w = zeros(1,3);

%% ALGORISME 1 - GRADIENT DESCENDENT CLÀSSIC
%% Calculem el gradient i actualitzem

if algorisme == "gd"
    
    for i = 1:epochs
    
        fc = w * transpose(mEx);
        sigm = 1./(1+exp(-fc));

        err = sigm - mEy;
        los = err .^ 2;
        losses(i) = sum(los);
    
        w = w - alfa.*(err*(2*mEx));
    
    end
   
end

%% ALGORISME 2 - GRADIENT DESCENDENT ESTOCÀSTIC
count1 = 1;
count2 = batch_size;

if algorisme == "sgd"
    
    div = ceil(size(mEx,1) / batch_size);
    
    for i = 1:div
        
        grupoX = mEx(count1:count2,:);
        grupoY = mEy(count1:count2);
        
        count1 = count1+batch_size;
        
        if count2 < size(mEx,1)
                
           count2 = count2+batch_size;
           
        end
        
        if count2>size(mEx,1)
            
            count2 = size(mEx,1);
            
        end
        
        for j = 1:epochs
    
            fc = w * transpose(grupoX);
            sigm = 1./(1+exp(-fc));

            err = sigm - grupoY;
            los = err .^ 2;
            lossesE(j) = sum(los);
    
            w = w - alfa.*(err*(2*grupoX));
    
        end
        
        lossesTotal(i,:) = lossesE(:);
        
    end
    
    for k = 1:size(lossesTotal,2)
        losses(k) = max(lossesTotal(:,k));
    end
    
end


%% Calcul de la funció amb SIGMOID:

fct = w * transpose(mTx);
sigmt = round(1./(1+exp(-fct)));

%% Testejem xarxa neuronal  (error & losses)

err = sigmt - mTy;
los = err .^ 2;
lossesTest = sum(los);

%% Calculem % d'encert en la classificació sobre el conjunt de test (total) (accuracy)
ac = size(sigmt,2) - lossesTest;
accuracy = (ac/size(sigmt,2))*100;

%%EXPERIMENT 1
%[accuracy, losses] = prac1_MAT ("data1.mat", 50, 0.1, 10, "gd", 5)
% figure()
% plot(1:10,losses)
% title("Funció de pèrdues");
% xlabel('epochs');
% ylabel('errors');
% legend('alpha = 0.1');
 
%[accuracy, losses] = prac1_MAT ("data1.mat", 50, 0.01, 10, "gd", 5)
% figure()
% plot(1:10,losses)
% title("Funció de pèrdues");
% xlabel('epochs');
% ylabel('errors');
% legend('alpha = 0.01');
 
%[accuracy, losses] = prac1_MAT ("data1.mat", 50, 0.001, 10, "gd", 5)
% figure()
% plot(1:10,losses)
% title("Funció de pèrdues");
% xlabel('epochs');
% ylabel('errors');
% legend('alpha = 0.001');
 
%[accuracy, losses] = prac1_MAT ("data1.mat", 50, 0.0001, 10, "gd", 5)
% figure()
% plot(1:epochs,losses)
% title("Funció de pèrdues");
% xlabel('epochs');
% ylabel('errors');
% legend('alpha = 0.0001');
 
%%EXPERIMENT 2
%[accuracy, losses] = prac1_MAT ("data2.mat", 50, 0.001, 100, "gd", 5)
% figure()
% plot(1:100,losses)
% title("Funció de pèrdues");
% xlabel('epochs');
% ylabel('errors');
% legend('algorisme = gd');
 
%[accuracy, losses] = prac1_MAT ("data2.mat", 50, 0.001, 100, "sgd", 5)
% figure()
% plot(1:100,losses)
% title("Funció de pèrdues");
% xlabel('epochs');
% ylabel('errors');
% legend('algorisme = sgd');
 
%%EXPERIMENT 3
%[accuracy, losses] = prac1_MAT ("data4.mat", 50, 0.001, 100, "sgd", 5)
% figure()
% plot(1:100,losses)
% title("Funció de pèrdues");
% xlabel('epochs');
% ylabel('errors');
% legend('batch = 5');
 
%[accuracy, losses] = prac1_MAT ("data4.mat", 50, 0.001, 100, "sgd", 10)
% figure()
% plot(1:100,losses)
% title("Funció de pèrdues");
% xlabel('epochs');
% ylabel('errors');
% legend('batch = 10');
 
%[accuracy, losses] = prac1_MAT ("data4.mat", 50, 0.001, 100, "sgd", 20)
% figure()
% plot(1:100,losses)
% title("Funció de pèrdues");
% xlabel('epochs');
% ylabel('errors');
% legend('batch = 20');
 
%[accuracy, losses] = prac1_MAT ("data4.mat", 50, 0.001, 100, "sgd", 50)
% figure()
% plot(1:100,losses)
% title("Funció de pèrdues");
% xlabel('epochs');
% ylabel('errors');
% legend('batch = 50');
 
%%EXPERIMENT 4
%[accuracy, losses] = prac1_MAT ("data1.mat", 50, 0.001, 100, "sgd", 5)
 
%[accuracy, losses] = prac1_MAT ("data2.mat", 50, 0.001, 100, "sgd", 5)
 
%[accuracy, losses] = prac1_MAT ("data3.mat", 50, 0.001, 100, "sgd", 5)
 
%[accuracy, losses] = prac1_MAT ("data4.mat", 50, 0.001, 100, "sgd", 5)
