function [ R ] = calculR(I,echelle)

I = double(I);

Ix = convolution_separable(I,[1 0 -1],[0 1 0].');
Iy = convolution_separable(I,[0 1 0],[1 0 -1].');

hy = gauss1d(echelle);
hx = hy.';
Ix2c = convolution_separable(Ix.*Ix,hx,hy);
Iy2c = convolution_separable(Iy.*Iy,hx,hy);
IxIyc = convolution_separable(Ix.*Iy,hx,hy);

k = 0.04;
detM = Ix2c.*Iy2c - IxIyc.*IxIyc;
traceM = (Ix2c + Iy2c);
R = detM - k*traceM.^2;
