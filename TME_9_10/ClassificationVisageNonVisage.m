X_train = double(X_train);
X_test = double(X_test);
X_noface = double(X_noface);

d = size(X_train,1);
n_train = size(X_train,2);
n_test = size(X_test,2);
n_noface = size(X_noface,2);

x_moy = visageMoyen(X_train);
Xc = zeros(d,n_train);

for k = 1:n_train
    Xc(:,k) = centre(X_train(:,k),x_moy);
end

[U,lambdas] = eigenfaces(Xc);

K = 30

E_r_visages = zeros(1,n_test);

for i = 1:n_test
    x = X_test(:,i);
    W = U(:,1:K);
    z = calculeProj(x,x_moy,W);
    x_r = reconstruction(z,x_moy,W);
    e_r = erreur_Reconstruction(x_r,x);
    E_r_visages(i) = e_r;
    if i <= 10
        %imwrite(reshape(x,64,64)/255,strcat('f',int2str(i),'.png'));
        %imwrite(reshape(x_r,64,64)/255,strcat('fr',int2str(i),'.png'));
        %imageview(reshape(x,64,64));
        %imageview(reshape(x_r,64,64));
    end
end

plot(E_r_visages);

E_r_non_visages = zeros(1,n_noface);

for i = 1:n_noface
    x = X_noface(:,i);
    W = U(:,1:K);
    z = calculeProj(x,x_moy,W);
    x_r = reconstruction(z,x_moy,W);
    e_r = erreur_Reconstruction(x_r,x);
    E_r_non_visages(i) = e_r;
    %imwrite(reshape(x,64,64)/255,strcat('nf',int2str(i),'.png'));
    %imwrite(reshape(x_r,64,64)/255,strcat('nfr',int2str(i),'.png'));
    %imageview(reshape(x,64,64));
    %imageview(reshape(x_r,64,64));
end

plot(E_r_non_visages);

E_r_moy_non_visages = mean(E_r_non_visages);
E_r_moy_non_visages
E_r_moy_visages = mean(E_r_visages);
E_r_moy_visages
E_r_min_non_visages = min(E_r_non_visages);
E_r_min_non_visages
E_r_max_non_visages = max(E_r_visages);
E_r_max_non_visages

