function combination = probSpreadCovid(a,b,c,d) %Model that takes into account a combination of all possible people that you can meet every day
%Comput gent sana que s'infecta
i = 1;
for j = 0:d-1
    i = i*(a+b-j)/(a+b+c-j);
end
combination = i;
end