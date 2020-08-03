         
h3 = gauss(0.3); % filtre gaussien de taille 3*3
h5 = gauss(0.5); % filtre gaussien de taille 5*5
h7 = gauss(1); % filtre gaussien de taille 7*7

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


H3 = imagePad(h3,zeros(256,256)); % fonction de transfert d'un filtre
                                  % gaussien de taille 3*3
IfH3 = fft2(H3);
IfsH3 = abs(fftshift(IfH3));
mesh(IfsH3);

H5 = imagePad(h5,zeros(256,256)); % fonction de transfert d'un filtre
                                  % gaussien de taille 5*5
IfH5 = fft2(H5);
IfsH5 = abs(fftshift(IfH5));
mesh(IfsH5);

H7 = imagePad(h7,zeros(256,256)); % fonction de transfert d'un filtre
                                  % gaussien de taille 7*7
IfH7 = fft2(H7);
IfsH7 = abs(fftshift(IfH7));
mesh(IfsH7);
