I1 = ouvrirImage('clown.bmp');
image(I1);
disp(size(I1));

I2 = ouvrirImage('CLOWN_LUMI.BMP');
image(I2);
disp(size(I2));

%On remarque que clown.bmp a une dimension en plus qui 
%correspond probablement a RVB
%Chaque dimension correspond a une couleur, rouge,vert,bleu

Ir = I1(:,:,1);
Iv = I1(:,:,2);
Ib =I1(:,:,3);

%La on peut jouer avec les 3 palettes pour changer les 
%couleurs de l'image
I3(:,:,1) = uint8(Ib) 
I3(:,:,2) = Iv
I3(:,:,3) = Ir

imageview(I3);

%Il suffit de mettre a 0 tout les autres valeurs a 0, par
%exemple pour concerver le rouge, on met I3(:,:,2) et I3(:,:,3)
%a 0 tout en conversant I3(:,:,1) = Ib 

I_rouge(:,:,1) = Ir;
I_rouge(:,:,2) = zeros(512,512);
I_rouge(:,:,3) = zeros(512,512);

imageview(I_rouge);



%{
Exercice 3
 principe :effectuer un filtrage passe-bas préalablement
au sous-échantillonnage

%}