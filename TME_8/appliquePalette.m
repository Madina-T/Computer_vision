function Ip = appliquerPalette( Iquant , palette )


Ip = zeros(size(Iquant,1),size(Iquant,2),3);

for i=1:1:size(Iquant,1)
    for j=1:1:size(Iquant,2)
        Ip(i,j,1) = palette(Iquant(i,j,1),Iquant(i,j,2),Iquant(i,j,3),1);
        Ip(i,j,2) = palette(Iquant(i,j,1),Iquant(i,j,2),Iquant(i,j,3),2);
        Ip(i,j,3) = palette(Iquant(i,j,1),Iquant(i,j,2),Iquant(i,j,3),3);
        
    end
end


Ip = uint8(Ip);

end