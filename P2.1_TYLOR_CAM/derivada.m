function yd= derivada(valors,h)
    for i=2:1:length(valors)-1
        yd(i-1) = (valors(i+1) - valors(i-1))/(2*h);
    end
end
