function [Q] = quaddraw(I,S)

QR = I;
QG = I;
QB = I;

[r,c]=find(S);
l = numreg(S);

for k=1:l
    v=S(r(k),c(k));
    %[vals,i,j]=qtgetblk(I,S,k);
    for i = 1:v
        for j = 1:v
          if i==1 || j==1 || i==v || j==v
              QR(i+r(k),j+c(k),1)=255;
              QG(i+r(k),j+c(k),1)=0;
              QB(i+r(k),j+c(k),1)=0;
          end
        end
    end
end

Q(:,:,1)=uint8(QR);
Q(:,:,2)=uint8(QG);
Q(:,:,3)=uint8(QB);    