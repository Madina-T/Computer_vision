X_train = double(X_train);
X_test = double(X_test);

d = size(X_train,1);
n_train = size(X_train,2);
n_test = size(X_test,2);

x_moy = visageMoyen(X_train);
Xc_train = zeros(d,n_train);
Xc_test = zeros(d,n_test);

for k = 1:n_train
    Xc_train(:,k) = centre(X_train(:,k),x_moy);
end

for k = 1:n_test
    Xc_test(:,k) = centre(X_test(:,k),x_moy);
end

[U,lambdas] = eigenfaces(Xc_train);

K = 8;
W = U(:,1:K);
D = calculMatDist(Xc_train,Xc_test,W,x_moy);
id_test_hat = identification(D);

taux_identification = 0;
for i = 1:n_test
    if id_test_hat(i) == id_test(i)
        taux_identification = taux_identification + 1;
    end
end
taux_identification = taux_identification/n_test;
taux_identification


nb_visages_reconnus = zeros(1,n_train);
for K = 1:n_train
    W = U(:,1:K);
    D = calculMatDist(Xc_train,Xc_test,W,x_moy);
    id_test_hat = identification(D);
    for i = 1:n_test
        if id_test_hat(i) == id_test(i)
            nb_visages_reconnus(K) = nb_visages_reconnus(K) + 1;
        end
    end
end

plot(nb_visages_reconnus);

% Bonne reconnaissance et temps de calcul faible : K = 8

nb_visages_reconnus = zeros(1,n_train);
K = 30;
W = U(:,1:K);
D = calculMatDist(Xc_train,Xc_train,W,x_moy);
imwrite(D/max(max(D)),'matriceD.png');

i = 0;
min_D = max(max(D));
max_D = 0;

i = 1;
while i <= n_train
    j = 1;
    while j <= 5
        if D(i,i+j) < min_D
            min_D = D(i,i+j);
        end
        if D(i,i+j) > max_D
            max_D = D(i,i+j);
            i
            i + j
        end
        j = j + 1;
    end
    i = i + 6;
end

% Distances min et max entre deux visages de la même classe
min_D
max_D

% Distances min et max entre deux visages de classes différentes
min_min_D = max(max(D));
for i = 1:n_train
    for j = 1:n_train
        if i ~= j
            if D(i,j) < min_min_D
                min_min_D = D(i,j);
            end
        end
    end
end

min_min_D
max(max(D))
        