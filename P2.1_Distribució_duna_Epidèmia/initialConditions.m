f = 1.65/7.; % contagious factor (number of people infected by one person infected/day)
k = 14; % days to immunity
first_ill = 10; %number of people ill at time = 0
days_2 = 365; %days of the simulation
population = 45000000.; %total country's population
days = linspace(1,days_2,days_2); %days array
alpha = 45; %people met every day
alpha2 = alpha;
beta = 0.0098; %factor taking into account the probability of becoming infected
death_rate = 0.03; %percentage of death in infected population 
confinement_factor = 1.; %factor dividing f after confinement restrictions
confinement_alpha = 5; %factor dividing alpha after confinement restrictions
day_confinement = 70; %the day before the beginning of the confinement 