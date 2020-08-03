clear all;
close all;

global NomImageBase;
global indexQuery;
global Sim;

PathImage = './Base/';
listima=dir(PathImage);
PathDescriptors= './histos/';

cpt=0;
% Quantif HSV
nH = 12;
nS = 3;
nV = 8;

NomImageBase = [ ];
for ii=1:length(listima);
    if(listima(ii).isdir==0 && ~strcmp(listima(ii).name(1), '.') )
        filename = listima(ii).name;
        nomcomp = strcat(PathImage, filename);
        NomImageBase = strvcat(NomImageBase,nomcomp);
    end
end



nomList = strcat(PathDescriptors,'ListHisto.mat');
load(nomList);
cpt = size(Listhist,1);
d = size(Listhist,2);


% Indice de l'image requete
indexQuery=350;
NomImageBase(indexQuery,:);
Sim = calculeSimilarites(Listhist);

AfficheSim_Interactif();
