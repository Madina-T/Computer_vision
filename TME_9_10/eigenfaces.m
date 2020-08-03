function [U,lambdas] = eigenfaces(Xc)

[U,S,~] = svd(Xc,0);

lambdas = S.^2;