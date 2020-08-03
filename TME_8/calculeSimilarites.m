function sim = calculeSimilarites(histos)

n = size(histos,1);
sim = zeros(n,n);

for i = 1:n
    for j = i:n
        sim(i,j) = dot(histos(i,:),histos(j,:));
    end
end
        