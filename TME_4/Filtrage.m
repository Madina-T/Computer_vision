I = ouvrirImage('mandrill.png');
If = fft2(I); % If = transformee de Fourier de l'image I
Ifs = fftshift(If); % Ifs = transformee de Fourier de I shiftee
fc = 10 % frequence de coupure
H = filtrePasseBasIdeal(size(I,1),size(I,2),fc); % filtrage de Ifs
Iff = Ifs.*H; % multiplication terme a terme => utilisation de l'operateur .*
Iffs = ifftshift(Iff); % inversion du shift de la TF filtree (Iff)
Iffsi = abs(ifft2(Iffs)); % Iffsi = transformee de Fourier inverse de Iffs
imageview(Iffsi);
imwrite(Iffsi,'mandrill_filtre_fc10.gif','gif');

I = ouvrirImage('lena.jpg');
If = fft2(I);
Ifs = fftshift(If);
H = filtrePasseBasIdeal(size(I,1),size(I,2),fc);
Iff = Ifs.*H;
Iffs = ifftshift(Iff);
Iffsi = abs(ifft2(Iffs));
imageview(Iffsi);
imwrite(Iffsi,'lena_filtre_fc10.gif','gif');


