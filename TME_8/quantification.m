function iv = quantification(v,K)

if v == 1
    iv = K;
else
    iv = floor(v*K) + 1;
end
