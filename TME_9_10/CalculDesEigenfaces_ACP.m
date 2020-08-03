X_train = double(X_train);

d = size(X_train,1);
n = size(X_train,2);

x_moy = visageMoyen(X_train);
Xc = zeros(d,n);

for k = 1:n
    Xc(:,k) = centre(X_train(:,k),x_moy);
    Xc(:,k) = Xc(:,k);
end

[U,lambdas] = eigenfaces(Xc);

%imageview(reshape(x_moy,64,64)/255);
lambdas = lambdas*(100/sum(lambdas,'all'));

for i = 1:15
    e = double(U(:,i));
    e = e - min(e);
    e = e/max(e);
    e = reshape(e,64,64);
    %imwrite(e,strcat('e',int2str(i),'.png'));
    sl = sum(lambdas);
    sl(i)
end

plot(cumsum(sum(lambdas)));