% Ce script nous permet de comparer
% L'image au niveau de niveau de gris et l'image égalisée
% Ainsi que leurs histogrammes

img = imread('image.jpg');
imgNiveauGris = imageToGris(img);
imgEgalisee = egalisationImage(imgNiveauGris);

histImgGris = histogramme(imgNiveauGris);
histImgEga  = histogramme(imgEgalisee);

subplot(2,2,1), imshow(imgNiveauGris),title('Image ');
subplot(2,2,2), bar(histImgGris),title('Histogramme image');

subplot(2,2,3), imshow(imgEgalisee),title('Image Egalisée');
subplot(2,2,4), bar(histImgEga),title('Histogramme image egalisée');