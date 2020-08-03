I = ouvrirImage('cygnus.tif');

J = expand(I);
imageview(J);

S = qtdecomp(J,5,8);
n = numreg(S);
Q = quaddraw(J,S);

imageview(Q);
