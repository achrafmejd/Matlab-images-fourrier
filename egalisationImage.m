function ImgEga = egalisationImage(MatImgNB)
     % La fonction retourne la matrice �galis�e de la matrice MatImgNb 
     % qui represente la matrice de l'image au niveau de gris
     % La fonction fait appel � la fonction histogramme
     [lin, col] = size(MatImgNB);
     ImgEga = zeros(lin,col);
     histImgVec = histogramme(MatImgNB);
     for i = 1:lin
        for j = 1:col
             ImgEga(i,j)=(255/(lin*col))*(sum((histImgVec(1:MatImgNB(i,j)+1))));
        end
     end
     ImgEga = uint8(ImgEga);
end
