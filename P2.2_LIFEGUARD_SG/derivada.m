function yd= derivada(sensor,h)

n = 2:1:length(sensor)-1;
yd = (sensor(n + 1)-sensor(n-1))/(2*h);

end