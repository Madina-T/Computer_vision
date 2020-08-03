I1 = ouvrirImage('sonrot.gif');
[Ir1, ordom] = rectify_orientation(I1);
imageview(Ir1);

I2 = ouvrirImage('port.jpg');
[Ir2, ordom] = rectify_orientation(I1);
imageview(Ir2);
ordom

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Q8. La rotation est bien effectuee sur l'image sonrot.gif tandis que
% l'image port.jpg ne subit aucune transformation car celle-ci est deja 
% orientee horizontalement.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%