sigma = 2.2;

I = ouvrirImage('lena.gif');

% Premier ordre (Sobel)

I = convolution(I,gauss(sigma));

Ix = filtre_horizontal_sobel(I);
Iy = filtre_vertical_sobel(I);
Ig = norme_gradient_sobel(Ix,Iy);
Is = seuillage_sobel(Ig,200);

imageview(Is);

% Second ordre (laplacien)

Il = laplacien(I);
Is = seuillage_laplacien(Il,10);

imageview(Is);

% Exercice 3

% 3.

% Lorsque l'on choisit des seuils de binarisation permettant globalement de
% détecter les même contours (délimitation du chapeau, de l'épaule et des
% yeux de la femme), on remarque que le filtre laplacien permet la 
% détection des contours de nombreux détails (tels que les plumes, les 
% cheveux et les pupilles) non pris en compte par le filtre de Sobel.

% 4.

% On fait varier sigma sur l'intervalle [0.7,2.2] et l'on remarque que plus
% sigma est petit plus on est sensible au bruit - mais les contours sont 
% détectés de maniere precise - et plus sigma est grand, plus on est
% robuste au bruit mais les contours sont epais.

