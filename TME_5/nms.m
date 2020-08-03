function Inms = nms(Ig,Ior)

n = size(Ig,1);
m = size(Ig,2);

Ior = imagePad(Ior,zeros(3,3));
Ig = imagePad(Ig,zeros(3,3));

Inms = zeros(n,m);

p = 0;
q = 0;

for i=2:n-1
    for j=2:m-1
        if Ior(i,j) == 1
            p = Ig(i,j-1);
            q = Ig(i,j+1);
        elseif Ior(i,j) == 2
            p = Ig(i-1,j+1);
            q = Ig(i+1,j-1);
        elseif Ior(i,j) == 3
            p = Ig(i-1,j);
            q = Ig(i+1,j);
        elseif Ior(i,j) == 4
            p = Ig(i-1,j-1);
            q = Ig(i+1,j+1);
        end
        if Ig(i,j) > p && Ig(i,j) > q
            Inms(i,j) = Ig(i,j);
        else
            Inms(i,j) = 0;
        end
    end
end