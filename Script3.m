% Ce script nous permet de visualiser l'image au niveau du gris 
% et l'image obtenu en appliquant la fonction contourImage

img = imread('image.jpg');

imgGr = imageToGris(img);
imgCtr = contourImage(imgGr);

subplot(1,2,1), imshow(imgGr),title('Image au niveau de gris');
subplot(1,2,2), imshow(imgCtr),title('Image avec contour');