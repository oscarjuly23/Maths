function probability = conditionalProbability(distribution,day_threshold,day_reached,total_days) %Computation of the conditional probability
%Calcul de la probabilitat condicionada
probability = sum(distribution(day_threshold:total_days))/sum(distribution(day_reached:total_days));
end