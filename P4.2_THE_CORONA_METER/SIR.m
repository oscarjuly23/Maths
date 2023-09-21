function [t, i]  = SIR(N,b,v,pais)

%%Variables
%N: %Total de individus (succeptibles)
%b: Probabilitat de contagi
%v: Tasa de recuperaci�
%pais: Nom del pa�s

S=1000; %Succeptibles inicials
I=1;    %Infectats inicials
R=0;    %Recuperats/morts
temps = 0:1:60;

options = odeset('Refine', 10, 'RelTol', 1e-4);


%% Funci� que resol la ecuaci� diferencial
[t,x]=ode45( @rigit, temps, [S I R],options);

	function dS =rigit(t,x)
        dS = zeros(3,1); %Vector de quatre posicions

        beta=b/N; %(b/N)
        gamma=v; %
      
        dS(1) = -beta*x(1)*x(2);            %dS/dt = -beta*S*I
        dS(2) = beta*x(1)*x(2)-gamma*x(2);  %dI/dt = beta*S*I-gamma*I
        dS(3)= gamma*x(2);                  %dR/dt = gamma*I
        
    end
    %%Grafica
    i= x(:,2); %numero infectats que mostrem

    str = ['SIR model -', pais];
    figure('Name','Gr�fica','NumberTitle','off');
    plot(t,x);
    title(str);
    legend('Succeptibles', 'Infectats', 'Recuperats');
    ylim([0 1000]);
    xlabel('t (temps)'); ylabel('x (individus)');

end