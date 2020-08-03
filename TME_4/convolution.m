function C = convolution(I,h)

Ip = imagePad(I,h);
n = size(I,1);
m = size(I,2);
d = size(h,1);
a = (d-1)/2;
C = zeros(size(Ip,1),size(Ip,2));

for i = a+1:n+a
    for j = a+1:m+a
        for l = -a:a
            for c = -a:a
                C(i,j) = C(i,j) + Ip(i-l,j-c)*h(l+a+1,c+a+1);
            end
        end
    end
end

end