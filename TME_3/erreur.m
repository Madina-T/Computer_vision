function eps = erreur(xr,xd,A)

L = size(xd,1);
p1 = 1/(2*A*L^2);
p2 = 0;
for k=1:L
    for l=1:L
        p2 = p2 + abs(xr(k,l) - xd(k,l));
    end
end

eps = p1*p2;

end