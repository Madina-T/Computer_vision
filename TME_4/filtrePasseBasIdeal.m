function Ff = filtrePasseBasIdeal(n,m,fc)

Ff = zeros(n,m);

for i=1:n
   for j=1:m
       if sqrt((n/2 - i)^2 + (m/2 - j)^2) <= fc % distance du point (i,j) au centre de l'image
           Ff(i,j) = 1;
       end
   end
end