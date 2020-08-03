sigma = 6;

% Suppression de non maxima sur tools.gif

I = ouvrirImage('tools.gif');

Ix = filtre_horizontal_sobel(I);
Iy = filtre_vertical_sobel(I);
Ig = norme_gradient_sobel(Ix,Iy);
Ior = orientation(Ix,Iy,Ig);

%imagesc(Ior); % visualisation couleur du resultat de la fonction 
              % orientation sur l'image tools.gif

Inms_tools = nms(Ig,Ior);
%imageview(Inms_tools);

% Suppression de non maxima sur tools.gif apres application d'un filtre gaussien

I = convolution(I,gauss(sigma));

Ix = filtre_horizontal_sobel(I);
Iy = filtre_vertical_sobel(I);
Ig = norme_gradient_sobel(Ix,Iy);
Ior = orientation(Ix,Iy,Ig);

Inms_tools_gauss = nms(Ig,Ior);
imageview(Inms_tools_gauss);

% Suppression de non maxima sur lena.gif

I = ouvrirImage('lena.gif');

Ix = filtre_horizontal_sobel(I);
Iy = filtre_vertical_sobel(I);
Ig = norme_gradient_sobel(Ix,Iy);
Ior = orientation(Ix,Iy,Ig);

Inms_lena = nms(Ig,Ior);
%imageview(Inms_lena);

% Suppression de non maxima sur lena.gif apres application d'un filtre gaussien

I = convolution(I,gauss(sigma));

Ix = filtre_horizontal_sobel(I);
Iy = filtre_vertical_sobel(I);
Ig = norme_gradient_sobel(Ix,Iy);
Ior = orientation(Ix,Iy,Ig);

Inms_lena_gauss = nms(Ig,Ior);
imageview(Inms_lena_gauss);

% Exercice 2

% 2.

% La suppression de non maxima assure d'avoir des contours d'épaisseur 1.

% 4.

% Le lissage permet d'atténuer le bruit contenu dans l'image afin de 
% détecter les contours sans etre parasité par celui-ci et donc de manière
% plus fidèle.

% Pour sigma = 1 : tous les contours des deux images sont détectés
% Pour sigma = 2 : les contours semblent plus "relachés"
% Pour sigma = 4 : les contours sont beaucoup plus relachés et l'on en perd
% certains
% Pour sigma = 6 : les contours sont très peu précis et l'on en perd
% beaucoup notamment au niveau des détails du visage de la femme (lena.gif)
% Ainsi, plus on augmente la valeur de sigma, plus l'on est robuste au
% bruit mais les contours sont épais et plus on diminue sigma, plus on est
% sensible au bruit mais les contours sont détectés de manière precise.