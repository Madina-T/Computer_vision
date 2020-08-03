function affiche_Reconstruction(x,x_moy,U)

imageview(reshape(x,64,64));

for K = [5 10 25 50 90]
    W = U(:,1:K);
    z = calculeProj(x,x_moy,W);
    x_r = reconstruction(z,x_moy,W);
    imageview(reshape(x_r,64,64));
    e_r = erreur_Reconstruction(x_r,x);
    e_r
end
