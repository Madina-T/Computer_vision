I = ouvrirImage('house2.jpg');

% Carte des coins

W = 15; % fenetre
R = calculR(I,W);
imageview(R);

% Exercice 1

% 2.
% On peut observer sur la carte des coins (image R.png) à la fois les 
% contours et les coins de la maison (toit, cheminee et fenetres par
% exemple). Le critère de Harris permet donc bien d'observer conjointement
% les contours et les coins.