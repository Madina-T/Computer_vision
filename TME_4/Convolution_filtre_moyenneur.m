h3 = (1/9)*ones(3,3); % filtre moyenneur de taille 3*3
h5 = (1/25)*ones(5,5); % filtre moyenneur de taille 5*5
h7 = (1/49)*ones(7,7); % filtre moyenneur de taille 7*7

I = ouvrirImage('barbara.png');

C3 = convolution(I,h3); % C3 = image filtree resultat de la convolution de h3 par I
imageview(C3);
imwrite(C3,'convolution_barbara_h3.gif','gif');

C5 = convolution(I,h5); % C5 = image filtree resultat de la convolution de h5 par I
imageview(C5);
imwrite(C5,'convolution_barbara_h5.gif','gif');

C7 = convolution(I,h7); % C7 = image filtree resultat de la convolution de h7 par I
imageview(C7);
imwrite(C7,'convolution_barbara_h7.gif','gif');

% 4. On remarque que plus on augmente d (dimension du filtre moyenneur),
% plus l'image filtrée devient floue. En effet, plus on augmente d, plus le
% lissage est important et plus l'image resultat de la convolution perd les
% details de l'image originale

H3 = imagePad(h3,zeros(256,256)); % fonction de transfert du filtre
                                  % moyenneur de taille 3*3
IfH3 = fft2(H3);
IfsH3 = abs(fftshift(IfH3));
mesh(IfsH3);
H5 = imagePad(h5,zeros(256,256)); % fonction de transfert du filtre
                                  % moyenneur de taille 5*5
IfH5 = fft2(H5);
IfsH5 = abs(fftshift(IfH5));
mesh(IfsH5);

H7 = imagePad(h7,zeros(256,256)); % fonction de transfert du filtre
                                  % moyenneur de taille 7*7
IfH7 = fft2(H7);
IfsH7 = abs(fftshift(IfH7));
mesh(IfsH7);


