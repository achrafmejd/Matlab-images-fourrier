function hist_axis = histogramme(MatImgNb)
    % La fonction retourne uu vecteur de taille 256
    % Le vecteur hist_axis contient les effectifs de chaque niveau de gris
    % MatImgNb est la matrice de l'image au niveau de gris 
    [lin, col ] = size(MatImgNb);
    hist_axis=zeros(1,256);
    for i=1:lin
        for j=1:col
            hist_axis(MatImgNb(i,j)+1)=hist_axis(MatImgNb(i,j)+1)+1;
        end
    end
end