function [I,n,m] = ouvrirImage(nom)
I = imread(nom);
imageview(I);
n = size(I,1);
m = size(I,2);
end