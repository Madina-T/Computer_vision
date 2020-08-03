clear all;
close all;

nH = 7;
nS = 4;
nV = 5;

I=ouvrirImage('ImagesResultats/Sunsets30.png');
I=double(I);
I = I ./ 65535;

figure();
imagesc(I);

% Conversion RGB vers HSV
J = rgb2hsv(I);

[palette,palette2] = calculePalette(nH,nS,nV);

[Iq,histo] = quantificationImage(J,nH,nS,nV);

Ip = appliquePalette(Iq,palette2);

% Visualisation de l'image quantifiee
imagesc(Ip);
imwrite(Ip,'ImagesResultats/Sunsets30_quantifiee.png');

% Transformation de l'histogramme en 1 vecteur 1D
histo = histo(:);
% Normalisation de l'histogramme de quantification
histo = normalisehisto(histo);
 
figure();
plot(histo);

affiche5dominantes(histo,palette );