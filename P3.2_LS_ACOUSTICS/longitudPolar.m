function [ long ] = longitudPolar(datos)
    yd = derivada(datos, (2*pi/50));
    b = length(yd);
    long  = 0;
    
    for i = 1:b
        long = sqrt(1 + (yd(i)^2)) + long;
    end
end