A = 10;
theta = 45; % en degres
L = 512;
T0 = 64;
Te = 1;
s_ech1 = sinusoid2d(A, theta,L, T0,Te); % signal echantillonee
%imageview(s_ech1);

f0 = 1/T0;
fm = f0*cos((theta*pi)/180);
fe = 16*fm;
Te = 1/fe;
s_ech2 = sinusoid2d(A, theta,L, T0,Te);
%imageview(s_ech2);

s_ech2f = compute_FT(s_ech2);
s_ech2fv = to_visualize_TF(s_ech2f);
%mesh(s_ech2fv);

fe = 4*fm;
Te = 1/fe;
s_ech3 = sinusoid2d(A, theta,L, T0,Te);
%imageview(s_ech3);
s_r1 = reconstruction(s_ech3,Te,size(s_ech3,1));
%imageview(s_r1);

eps = erreur(s_r1,s_ech3,A);
eps

theta = 10;
fe = (3/2)*fm;
Te = 1/fe;
s_ech3 = sinusoid2d(A, theta,L, T0,Te);
%imageview(s_ech3);
s_r1 = reconstruction(s_ech3,Te,size(s_ech3,1));
%imageview(s_r1);

eps = erreur(s_r1,s_ech3,A);
eps