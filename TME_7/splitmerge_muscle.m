% Lecture de l'image
I = ouvrirImage('muscle.pgm');

% Extension de l'image à une taille en puissance de 2
J = expand(I);
imageview(J);

% Découpage en Quadtree selon le critère d'homogénéité
S = qtdecomp(J,30,8);
n = numreg(S);
Q = quaddraw(J,S);

% Merge locale
F = label2rgb(fusion(S,J,16));
imageview(F);

% Merge globale
Fg = label2rgb(fusiong(S,J,50));
imageview(Fg);