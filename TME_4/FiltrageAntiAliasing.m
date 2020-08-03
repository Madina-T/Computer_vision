I = ouvrirImage('barbara.png');
h = antiAliasingFilter(7,7);

for i=1:4
    %imageview(I);
    If = to_visualize_TF(compute_FT(I));
    mesh(If);
    I = subSampling2(I);
    imwrite(I,strcat('subSampling_barbara',int2str(i+1),'.gif'),'gif');
end

I = ouvrirImage('barbara.png');
h = antiAliasingFilter(3,3);
I = convolution(I,h)

for i=1:4
    %imageview(I);
    If = to_visualize_TF(compute_FT(I));
    mesh(If);
    I = subSampling2(I);
    imwrite(I,strcat('subSampling_antiAliasing_barbara',int2str(i+1),'.gif'),'gif');
end

I = ouvrirImage('mandrill.png');
h = antiAliasingFilter(3,3);

for i=1:4
    %imageview(I);
    If = to_visualize_TF(compute_FT(I));
    mesh(If);
    I = subSampling2(I);
    imwrite(I,strcat('subSampling_mandrill',int2str(i+1),'.gif'),'gif');
end

I = ouvrirImage('mandrill.png');
h = antiAliasingFilter(3,3);
I = convolution(I,h)

for i=1:4
    %imageview(I);
    If = to_visualize_TF(compute_FT(I));
    mesh(If);
    I = subSampling2(I);
    imwrite(I,strcat('subSampling_antiAliasing_mandrill',int2str(i+1),'.gif'),'gif');
end