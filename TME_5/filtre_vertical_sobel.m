function Iy = filtre_sobel_vertical(I)

Gy = [1 2 1;0 0 0;-1 -2 -1];
Iy = convolution(I,Gy);

end