function id_test_hat = identification(D)

[~,I] = min(D,[],2);

id_test_hat = I.';

for i = 1:size(I)
    id_test_hat(i) = floor(id_test_hat(i)/6) + 1;
end