I = ouvrirImage('house2.png');

J = expand(I);
imageview(J);

S = qtdecomp(J,10,8);
n = numreg(S);
Q = quaddraw(J,S);

imageview(Q);