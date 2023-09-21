function [ sol ] = inttrapezis( vector,h )
    a = 1;
    n = floor(length(vector)/h);
    b = length(vector);
    c = (b-a)/n;
    sol = 0;
    
    for i = 2:b
        sol = vector(i) + sol;
    end
    
    res = c * (vector(a) + 2 * sol + vector(b));
end

