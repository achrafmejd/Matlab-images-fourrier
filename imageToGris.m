function imgGris = imageToGris(img)
    % La fonction prend la matrice de l'image comme parametre
    % La matrice img est une matrice de 3 dimension

    % imgRed represente le canal rouge de la matrice img
    imgRed=img(:,:,1);
    % imgGreen represente le canal du vert de la matrice img
    imgGreen=img(:,:,2);
    % imgBlue represente le canal du bleu de la matrice img
    imgBlue=img(:,:,3);
    % En appliquant la formule suivante, on obtient la matrice de l'image
    % au niveau du gris
    imgGris= imgRed/3 + imgGreen/3 + imgBlue/3 ; 
end