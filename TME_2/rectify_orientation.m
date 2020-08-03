function [Ir, ordom] = rectify_orientation(I)
If = compute_FT(I) % If = TF de I
M = to_visualize_TF_log(If); % M = module de la TF de I (If)
Mb = image_binarization(If,3*10^5); % Mb = module seuille de I
[Ior, ordom] = orientationDominante(Mb);
Ir = rotationImage(I,-ordom);
end