function [ long ] = intlong(datos)
    a = 1;
    yd = derivada(datos, 1);
    b = length(yd);
    long  = 0;
    
    for i = a:b
        long = sqrt(1 + (yd(i)^2)) + long;
    end
end

