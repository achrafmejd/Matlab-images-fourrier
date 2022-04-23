% Ce script nous affiche l'image originale et l'image obtenue par la
% fonction imageToGris

img = imread('image.jpg');
imgGris = imageToGris(img);

subplot(1,2,1), imshow(img),title('Image Original en Couleur');
subplot(1,2,2), imshow(imgGris),title('Image au niveau de gris');
