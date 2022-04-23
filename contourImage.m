% % function ImageContours = contourImage(imgMatriceNB)
% %     % La fonction retourne la matrice de l'image imgMatriceNB avec les
% %     % contours tracés 
% %     [nbLignes, nbColonnes] = size(imgMatriceNB);
% %     ImageContours = zeros(nbLignes, nbColonnes);
% %     imgMatriceNB = im2double(imgMatriceNB);
% %     for i = 1:nbLignes
% %         for j=1:nbColonnes
% %             % On n'applique pas la formule quand les indices i ou j
% %             % est égale à 1 ou nl ou nc
% %             % On considère que dans ces indices on ne retrouvera pas de
% %             % contour en mettant la valeur du pixel en 0 (noir)
% %             if i == 1 || j==1 || i==nbLignes || j==nbColonnes
% %                 ImageContours(i,j)= 0;
% %             else 
% %                 a= ((imgMatriceNB(i-1,j)-imgMatriceNB(i+1,j))^2);
% %                 b= ((imgMatriceNB(i,j-1)-imgMatriceNB(i,j+1))^2);
% %                 l= sqrt(a + b) ;
% %                 % On donne à chaque pixel la valeur l qui peut etre :
% %                 % soit l=0 (ou proche de 0), cad le pixel ne fait pas
% %                 % partie d'un cotour  
% %                 % sinon l est maximale donc le pixel fait partie d'un
% %                 % contour 
% %                 ImageContours(i,j)= l;    
% %              end
% %         end
% %     end
% %    
% % end
% 
% 
% function ImageContours = contourImage(imgMatriceNB)
%     % La fonction retourne la matrice de l'image imgMatriceNB avec les
%     % contours tracés 
%     [nbLignes, nbColonnes] = size(imgMatriceNB);
%     ImageContours = zeros(nbLignes, nbColonnes);
%     imgMatriceNB = im2double(imgMatriceNB);
%     
%     % On calculera à l'aide de cette boucle la moyenne de chaque ligne 
%     % en stockant ces moyennes dans le vecteur seuilM
%     % Et puis on calculera la moyenne du vecteur pour l'utiliser pour
%     % detetecter les contours des objects dans l'image
%     seuilM = zeros(1,nbColonnes);
%     for s=1:nbColonnes
%         for c=1:nbLignes
%             seuilM(s) = mean(imgMatriceNB(c,:));
%         end
%     end
%     moyenne = mean(seuilM);
%   
%     for i = 1:nbLignes
%         for j=1:nbColonnes
%             % On n'applique pas la formule quand les indices i ou j
%             % est égale à 1 ou nl ou nc
%             % On considère que dans ces indices on ne retrouvera pas de
%             % contour en mettant la valeur du pixel en 0 (noir)
%             if i == 1 || j==1 || i==nbLignes || j==nbColonnes
%                 ImageContours(i,j)= 0;
%             else 
%                 a= ((imgMatriceNB(i-1,j)-imgMatriceNB(i+1,j))^2);
%                 b= ((imgMatriceNB(i,j-1)-imgMatriceNB(i,j+1))^2);
%                 l= sqrt(a + b) ;
%                 % On donne à chaque pixel la valeur l qui peut etre :
%                 % soit l=0 (ou proche de 0), cad le pixel ne fait pas
%                 % partie d'un cotour  
%                 % sinon l est maximale donc le pixel fait partie d'un
%                 % contour 
%                 if l>moyenne
%                     ImageContours(i,j)= 255; 
%                 else
%                     ImageContours(i,j)= 0;
%                 end
%              end
%         end
%     end
%    
% end

function ImageContours = contourImage(imgMatriceNB)
 % La fonction retourne la matrice de l'image imgMatriceNB avec les
 % contours tracés 
 [nbLignes, nbColonnes] = size(imgMatriceNB);
 ImageContours = zeros(nbLignes, nbColonnes);
 imoy = zeros(nbLignes, nbColonnes);
 imgMatriceNB = im2double(imgMatriceNB);
 seuilM = zeros(1,nbLignes);
 for i = 1:nbLignes
    for j=1:nbColonnes
        if ~(i == 1 || j==1 || i==nbLignes || j==nbColonnes)
            a= ((imgMatriceNB(i-1,j)-imgMatriceNB(i+1,j))^2);
            b= ((imgMatriceNB(i,j-1)-imgMatriceNB(i,j+1))^2);
            l= sqrt(a + b) ;
            imoy(i,j)=l;
        end
     end
 end
% On calculera à l'aide de cette boucle la moyenne de chaque ligne en 
 % stockant ces moyennes dans le vecteur seuilM Et puis on calculera la 
 % moyenne du vecteur pour l'utiliser pour detetecter les contours des 
 % objects dans l'image
 for c=1:nbLignes
     seuilM(c) = mean(imoy(c,:));
 end
 disp(seuilM(10));
 moyenne = mean(seuilM);
  for i = 1:nbLignes
    for j=1:nbColonnes
 % On n'applique pas la formule quand les indices i ou j est égale à 1 ou 
 % nl ou nc. On considère que dans ces indices on ne retrouvera pas contour
 % en mettant la valeur du pixel en 0 (noir)
        if i == 1 || j==1 || i==nbLignes || j==nbColonnes
            ImageContours(i,j)= 0;
        else
             if imoy(i,j)>moyenne
                ImageContours(i,j)= 255; 
             else
                ImageContours(i,j)= 0;
             end
        end
     end
 end
   
end
