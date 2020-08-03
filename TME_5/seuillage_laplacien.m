function Is = seuillage_laplacien(Il,S)

n = size(Il,1);
m = size(Il,2);

Il = imagePad(Il,zeros(3,3));
Is = zeros(size(Il,1),size(Il,2));

for i= 2:n-1
    for j=2:m-1
        maxIl = max(max(Il(i-1:i+1,j-1:j+1)));
        minIl = min(min(Il(i-1:i+1,j-1:j+1)));
        if maxIl > 0 && minIl < 0 && maxIl-minIl > S
            Is(i,j) = 255;
        end
    end
end

end