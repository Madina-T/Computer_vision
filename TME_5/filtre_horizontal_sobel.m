function Ix = filtre_sobel_horizontal(I)

Gx = [1 0 -1;2 0 -2;1 0 -1];
Ix = convolution(I,Gx);

end