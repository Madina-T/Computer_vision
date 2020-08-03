function [J] = image_binarization(I,seuil)
J = (I > seuil)*255;
end