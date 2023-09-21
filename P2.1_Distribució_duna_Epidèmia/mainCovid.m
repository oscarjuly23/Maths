%% Main 
initialConditions; %Initialization of initial conditions

%Initialization of arrays
healthy = zeros(1,days_2); % Total number of healthy people at t = t_i
infected = zeros(1,days_2);% Total number of infected people at t = t_i 
immune = zeros(1,days_2);  % Total number of immune people at t = t_i
deaths = zeros(1,days_2);  % Total number of deaths at t = t_i
total_cases = zeros(1,days_2); % Total number of cases of CoVid-19 up to t = t_i

infected(1) = first_ill;
healthy(1) = population - infected(1) - immune(1);

% Calculations for CoVid-19 distribution

for i = 2:days_2
    healthy(i) = (1-beta*(1-probSpreadCovid(immune(i-1),healthy(i-1),infected(i-1),alpha)))*healthy(i-1);
    total_cases(i) = healthy(i-1)-healthy(i)+total_cases(i-1);
    if healthy(i) > 0
        if i == k
            immune(i)=first_ill;
        elseif i > k+1
            deaths(i) = -(healthy(i-k)-healthy(i-(k+1)))*death_rate+deaths(i-1);
            immune(i) = -(healthy(i-k)-healthy(i-(k+1)))*(1.-death_rate)+immune(i-1);
        end
        infected(i) = -(healthy(i)-healthy(i-1))-(immune(i)+deaths(i)-(immune(i-1)+deaths(i-1)))+infected(i-1);
    end
end

%% Normalization of distribution
%Utilitzem la funció de normalització
infectats_n = normalization(infected);

%% Conditional probability of becoming infected
%Utilitzem la funció de probabilitat condicionada
probabilitat = conditionalProbability(infectats_n, 150, 125, days_2);

%% Plot

%Corba d'infectats
figure('Name', 'Exercici 2.1')
plot(infected); 
hold on;
plot(immune);   
hold on;
plot(deaths);   
hold on;
plot(healthy);  
hold on;
title("Corba d'infectats");
xlabel('t (dies)'); ylabel('x (persones)');
legend('infectats', 'inmunes', 'morts', 'sans')

%Normal d'infectats
figure('Name', 'Exercici 2.2')
plot(infectats_n)
title("Corba d'infectats normalitzada");
xlabel('t (dies)'); ylabel('x (persones)');

%% EXERCICI 4
for i = 2:days_2
    %%Comprovem si ha començat el confinament, si ha començat aplicarem la
    %%confinament_alpha en comptes de alpha.
    if i > day_confinement
        healthy(i) = (1-beta*(1-probSpreadCovid(immune(i-1),healthy(i-1),infected(i-1),confinement_alpha)))*healthy(i-1);
        total_cases(i) = healthy(i-1)-healthy(i)+total_cases(i-1);
    else
        healthy(i) = (1-beta*(1-probSpreadCovid(immune(i-1),healthy(i-1),infected(i-1),alpha)))*healthy(i-1);
        total_cases(i) = healthy(i-1)-healthy(i)+total_cases(i-1);
        
    end
    if healthy(i) > 0
        if i == k
            immune(i)=first_ill;
        elseif i > k+1
            deaths(i) = -(healthy(i-k)-healthy(i-(k+1)))*death_rate+deaths(i-1);
            immune(i) = -(healthy(i-k)-healthy(i-(k+1)))*(1.-death_rate)+immune(i-1);
        end
        infected(i) = -(healthy(i)-healthy(i-1))-(immune(i)+deaths(i)-(immune(i-1)+deaths(i-1)))+infected(i-1);
    end
end

%Corba d'infectats amb confinament
figure('Name', 'Exercici 4')
plot(infected);
hold on;
plot(immune);
hold on;
plot(deaths);
hold on;
plot(healthy);
hold on;
title("Corba d'infectats amb confinament");
xlabel('t (dies)'); ylabel('x (persones)');
legend('infectats', 'inmunes', 'morts', 'sans')