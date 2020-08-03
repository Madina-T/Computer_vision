function[h] = calculerHisto(I)
h = zeros(1,256)
for c = 0:255
    for i = 1:size(I,1)
        for j = 1:size(I,2)
            if I(i,j) == c
                h(c) = h(c) + 1;
            end
        end
    end
end
plot(h)
end