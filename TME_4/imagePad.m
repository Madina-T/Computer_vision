function Ip = imagePad(I,h)

d = size(h,1);
n = size(I,1);
m = size(I,2);
a = int16((d-1)/2);
Ip = zeros(n+2*a,m+2*a);
Ip(a:n+a-1,a:m+a-1) = I;



