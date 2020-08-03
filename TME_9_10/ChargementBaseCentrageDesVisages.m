X_train = double(X_train);
x_moy = visageMoyen(X_train);

x_moy = reshape(x_moy,64,64)/255;
imwrite(x_moy,'visageMoyen.png');

v6 = reshape(X_train(:,6),64,64)/255;
v6_centre = centre(v6,x_moy);
v6_centre = v6_centre + abs(min(min(v6_centre)));

%imwrite(v6,'visage6.png');
%imwrite(v6_centre,'centre6.png');

v12 = double(reshape(X_train(:,12),64,64))/255;
v12_centre = centre(v12,x_moy);
v12_centre = v12_centre + abs(min(min(v12_centre)));

%imwrite(v12,'visage12.png');
%imwrite(v12_centre,'centre12.png');

v18 = double(reshape(X_train(:,18),64,64))/255;
v18_centre = centre(v18,x_moy);
v18_centre = v18_centre + abs(min(min(v18_centre)));

%imwrite(v18,'visage18.png');
%imwrite(v18_centre,'centre18.png');

v24 = double(reshape(X_train(:,24),64,64))/255;
v24_centre = centre(v24,x_moy);
v24_centre = v24_centre + abs(min(min(v24_centre)));

%imwrite(v24,'visage24.png');
%imwrite(v24_centre,'centre24.png');

v40 = double(reshape(X_train(:,40),64,64))/255;
v40_centre = centre(v40,x_moy);
v40_centre = v40_centre + abs(min(min(v40_centre)));

%imwrite(v40,'visage40.png');
%imwrite(v40_centre,'centre40.png');

