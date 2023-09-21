function [ sol ] = areaPolar( vector,h )
    sol = 0;
    for i = 1:length(vector)
        sol = (power(vector(i),2))*h + sol;
    end
    sol = sol/2;
end