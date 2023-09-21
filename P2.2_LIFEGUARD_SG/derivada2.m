function yd= derivada2(sensor,h)
    
    n = 2:1:length(sensor)-1;
    yd = (sensor(n+1)-2*sensor(n)+sensor(n-1))
    
end