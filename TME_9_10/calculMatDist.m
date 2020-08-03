function D = calculMatDist(Xc_train,Xc_test,W,x_moy)

n_train = size(Xc_train,2);
n_test = size(Xc_test,2);
D = zeros(n_test,n_train);

for i = 1:n_test
    for j = 1:n_train
        x_test = Xc_test(:,i);
        x_train = Xc_train(:,j);
        z_test = calculeProj(x_test,x_moy,W);
        z_train = calculeProj(x_train,x_moy,W);
        D(i,j) = norm(z_test - z_train);
    end
end