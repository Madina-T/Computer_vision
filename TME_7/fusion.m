function F = fusion(S,I,thresh)

B = zeros(size(I));
kmax = full(max(S));

for k = 1 :kmax;
    [vals,i,j]=qtgetblk(I,S,k);
    if ~isempty(vals)
        for l = 1:length(i)
            if std2(vals(:,:,l)) < thresh
                B(i(l):i(l)+k,j(l):j(l)+k) = 1;
            end
        end
    end
end
F = bwlabel(B);