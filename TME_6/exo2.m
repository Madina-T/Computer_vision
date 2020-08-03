I = ouvrirImage('house2.jpg');

% Carte des coins

W = 15; % fenetre
R = calculR(I,W);
imageview(R);

% Detection des points d'interet (detecteur de Harris)

S = 10; % seuil de binarisation
Rb = seuilleR(R,S); % carte des coins binarisee
imageview(Rb);
Rnms = nms(R,Rb); % suppression de non maxima locaux a partir de la carte
                  % des coins et de sa version binarisee
imageview(Rnms);

% Evaluation du detecteur de coins

Ib = seuilleR(I,S);
JAff = affichePts(I,Ib,2);
imageview(JAff);

