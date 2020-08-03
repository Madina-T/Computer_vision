I1 = ouvrirImage('clown.bmp');
% I1 est un tableau a 3 dimensions : les 2 premieres dimensons correspondent
% au nombre de lignes (512) et de colonnes (512) de l'image tandis que la 3eme
% correspond au nombre de couleurs ayant ete utilisees pour colorer l'image
% (ici 3 : rouge, vert et bleu)
I2 = ouvrirImage('CLOWN_LUMI.BMP');
% I2 est un tableau a 2 dimensions seulement, c'est une image en noir et
% blanc qui ne contient donc pas d'information "couleur" au contraire de I1

% Composante rouge
IR = I1(:,:,1);
mesh(IB);
% Composante verte
IV = I1(:,:,2);
mesh(IV);
% Composante bleue
IB = I1(:,:,3);
mesh(IB);

% RBV
I3 = cat(3,IR,IB,IV);
imageview(I3);
imwrite(I3,'RBV.bmp','bmp');
% VRB
I3 = cat(3,IV,IR,IB);
imageview(I3);
imwrite(I3,'VRB.bmp','bmp');
% VBR
I3 = cat(3,IV,IB,IR);
imageview(I3);
imwrite(I3,'VBR.bmp','bmp');
% BRV
I3 = cat(3,IB,IR,IV);
imageview(I3);
imwrite(I3,'BRV.bmp','bmp');
% BVR
I3 = cat(3,IB,IV,IR);
imageview(I3);
imwrite(I3,'BVR.bmp','bmp');

R = cat(3,IR,zeros(size(I1,1),size(I1,2)),zeros(size(I1,1),size(I1,2)));
imageview(R);
imwrite(R,'R.bmp','bmp');
V = cat(3,zeros(size(I1,1),size(I1,2)),IV,zeros(size(I1,1),size(I1,2)));
imageview(V);
imwrite(V,'V.bmp','bmp');
B = cat(3,zeros(size(I1,1),size(I1,2)),zeros(size(I1,1),size(I1,2)),IB);
imageview(B);
imwrite(B,'B.bmp','bmp');
