function ydn = derivadan(valors,h,grau)
    auxiliars=valors
        for i=1:grau
            ydn=derivada(auxiliars,h)
            auxiliars=ydn
        end
end