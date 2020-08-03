% Ouverture des deux images
I1 = ouvrirImage('son.gif');
I2 = ouvrirImage('sonrot.gif');

% Calcul de leurs transformees de Fourier
If1 = compute_FT(I1);
If2 = compute_FT(I2);

% Visualisation des spectres en echelle logarithmique
Ifv1 = to_visualize_TF_log(If1);
Ifv2 = to_visualize_TF_log(If2);
imageview(Ifv1);
imageview(Ifv2);

% Binarisation des spectres avec le seuil de 3*10⁵
J1 = image_binarization(If1,3*10^5);
J2 = image_binarization(If2,3*10^5);

% Visualisation des spectres seuilles
Jv1 = to_visualize_TF_log(J1);
Jv2 = to_visualize_TF_log(J2);
imageview(Jv1);
imageview(Jv2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Q4. On observe que les motifs visibles sur les spectres seuilles sont 
% orientes de la meme maniere que les images reelles correspondantes. Ces 
% deux images illustrent bien la propriete selon laquelle une rotation
% d’angle alpha dans le domaine spatial se traduit par une rotation d’angle
% alpha dans le domaine frequentiel. Ainsi, les lignes directrices
% fortement representees dans ces images sont mises en valeur dans leurs 
% spectres.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Traitement blend
I3 = blend(I1,I2,0.5);
If3 = compute_FT(I3);
J3 = image_binarization(If3,3*10^5);
Jv3 = to_visualize_TF_log(J3);
imageview(Jv3)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Q6. L'orientation de chacune des deux images initiales est observable sur
% le spectre seuille de l'image combinee. Le spectre obtenu grace a la
% fonction blend verifie donc bien la propriete suivante : si l'on prend 
% deux signaux x et y  dont les transformees de Fourier sont respectivement
% X et Y puis a et b deux réels alors la transformee de Fourier d'un
% mélange linéaire des fonctions sera égal au mélange des transformatees de
% Fourier. Ici on a choisi le parametre alpha = 0.5 : l'image combinee est
% donc un melange uniforme des deux images initiales et ceci est egalement
% verifie pour son spectre.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%