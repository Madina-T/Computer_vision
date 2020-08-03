I = ouvrirImage('lena.gif');

% Filtre de Sobel

Ix = filtre_horizontal_sobel(I);
Iy = filtre_vertical_sobel(I);
G = norme_gradient_sobel(Ix,Iy);
Is = seuillage_sobel(G,70);

imageview(Is);

% Filtre laplacien

Il = laplacien(I);
Is = seuillage_laplacien(Il,70);

imageview(Is);

% Exercice 1

% 3.

% On observe que le filtre laplacien détecte les contours de manière moins
% precise que le filtre de Sobel : pour un seuil égal à 70 pour les deux
% filtres, on observe un grand nombre de pixels blancs éparpillés un peu
% partout sur l'image résultat du filtrage laplacien, ceux-ci sont beaucoup
% moins nombreux dans le cas du filtrage de Sobel. Ces "défauts" sont 
% d'autant plus flagrants lorsque l'on fait varier la valeur du seuil pour 
% les deux filtres. En effet, pour des seuils bas (30 par exemple), les 
% contours restent pertinents pour les deux filtres mais l'image résultat 
% est très bruitée (surtout dans le cas du filtrage laplacien). A
% l'inverse, lorsque le seuil est élevé (200 par exemple), l'image résultat
% est très peu bruitée mais de nombreux contours ne sont pas détectés
% (filtre de Sobel) voire quasi inexistants (filtre laplacien).

