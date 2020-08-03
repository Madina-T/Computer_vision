I = ouvrirImage('muscle.pgm');

J = expand(I);
imageview(J);

S = qtdecomp(J,30,8);
n = numreg(S);
Q = quaddraw(J,S);

imageview(Q);