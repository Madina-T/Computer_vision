% Premiere image : toyHorse1

imageview(I1);

% Carte des coins

W = 15; % fenetre
R = calculR(I1,W);
imageview(R);


% Detection des points d'interet (detecteur de Harris)

S = 100; % seuil de binarisation
Rb = seuilleR(R,S); % carte des coins binarisee
imageview(Rb);
Rnms = nms(R,Rb); % suppression de non maxima locaux a partir de la carte
                  % des coins et de sa version binarisee
imageview(Rnms);

% Deuxieme image : toyHorse2

imageview(I2);

% Carte des coins

W = 15; % fenetre
R = calculR(I2,W);
imageview(R);


% Detection des points d'interet (detecteur de Harris)

S = 0.01; % seuil de binarisation
Rb = seuilleR(R,S); % carte des coins binarisee
imageview(Rb);
Rnms = nms(R,Rb); % suppression de non maxima locaux a partir de la carte
                  % des coins et de sa version binarisee
imageview(Rnms);

%Exercice 3

%2.
% Les deux images sont en niveaux de gris : L = 256.

%3.
% Les transformations principales entre les deux images sont
% l'la rotation et la variation de luminosité. En effet l'image toyHorse2 
% est orientée vers la droite (par rapport a toyHorse1) et semble plus
% lumineuse que l'image toyHorse1.

%4.
% Avec la chaîne de traitement actuelle on est invariant a la rotation et 
% aux transformations affines de luminosité car R est calculé a partir de 
% det(M) et trace(M).
% Avec un seuil S1 = 100 pour toyHorse1 et un seuil S2 = 0.01, on detecte
% sensiblement les memes points dans les deux images (voir images 
% Harris_toyHorse1 et Harris_toyHorse2).