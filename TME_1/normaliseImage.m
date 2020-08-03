function[J] = normaliseImage(I,k1,k2)
J = ((I-min(min(I)))/(max(max(I))-min(min(I))))*(k2-k1) + k1;
end