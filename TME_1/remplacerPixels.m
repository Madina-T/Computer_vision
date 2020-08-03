function[J] = remplacerPixels(I,k1,k2)
J=I
for i = 1:size(I,1)
    for j = 1:size(I,2)
        if J(i,j) == k1
            J(i,j) = k2;
        end
    end
end
