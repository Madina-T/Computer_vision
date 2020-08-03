function Rnms = nms(R,Rb)

Rp = imagePad(R,zeros(3,3));
N = size(R,1);
M = size(R,2);
Rnms = Rb;

for x = 2:N+1
    for y = 2:M+1
        for i = -1:1
            for j = -1:1
                if (Rp(x,y) < Rp(x+i,y+j))
                    Rnms(x,y) = 0;
                end
            end
        end
    end
end
