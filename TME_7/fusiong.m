function F = fusiong(S,I,thresh)

B = zeros(size(I));
kmax = full(max(S));
sigmac = 0;
mu = 0;
n = 0;
for k = 1 :kmax;
    [vals,i,j]=qtgetblk(I,S,k);
    if ~isempty(vals)
        for l = 1:length(i)
            n1 = n + i(l)*j(l);
            mu1 = mu*n+mean2(vals(:,:,l))/n1;
            sigma1 = n*(sigmac+mu*mu) + i(l)*j(l)*std2(vals(:,:,l)) + mean2(vals(:,:,l)^2)/n1;
            if sigma1 < thresh
                B(i(l):i(l)+k,j(l):j(l)+k) = 1;
                n = n1;
                mu = mu1;
                sigmac = sigma1;
            end
        end
    end
end
F = bwlabel(B);