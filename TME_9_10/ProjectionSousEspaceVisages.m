X_train = double(X_train);
X_test = double(X_test);

d = size(X_train,1);
n_train = size(X_train,2);
n_test = size(X_test,2);

x_moy = visageMoyen(X_train);
Xc = zeros(d,n_train);

for k = 1:n_train
    Xc(:,k) = centre(X_train(:,k),x_moy);
end

[U,lambdas] = eigenfaces(Xc);

%Reconstruction de l'image 50 de la base d'apprentissage
%affiche_Reconstruction(X_train(:,50),x_moy,U);

%Reconstruction de l'image 55 de la base d'apprentissage
v55 = X_train(:,55);
%affiche_Reconstruction(v55,x_moy,U);
K = 90;
W = U(:,1:K);
z = calculeProj(v55,x_moy,W);
v55_r = reconstruction(z,x_moy,W);
e_r = erreur_Reconstruction(v55_r,v55);
%e_r

%Reconstruction de l'image 17 de la base de test
v17 = X_test(:,17);
affiche_Reconstruction(v17,x_moy,U);
K = 90;
W = U(:,1:K);
z = calculeProj(v17,x_moy,W);
v17_r = reconstruction(z,x_moy,W);
e_r = erreur_Reconstruction(v17_r,v17);
%e_r

%Bonus

E_r = zeros(n_train,n_test);

for K = 1:n_train
    for i = 1:n_test
        x = X_test(:,i);
        W = U(:,1:K);
        z = calculeProj(x,x_moy,W);
        x_r = reconstruction(z,x_moy,W);
        e_r = erreur_Reconstruction(x_r,x);
        E_r(K,i) = e_r;
    end
end

E_r = mean(E_r,2);
plot(E_r);
%coherent car courbe inversement proportionnelle