function J = expand(I)

h = size(I,1);
l = size(I,2);

n = ceil(log2(max(l,h)));
moy = mean(mean(I));
J = ones(2^n,2^n).*moy;

J(1:h,1:l) = I;  

    