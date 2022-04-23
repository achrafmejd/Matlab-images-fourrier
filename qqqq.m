img=imread('image.jpg');
R=img(:,:,1);
G=img(:,:,2);
B=img(:,:,3);
w=(R/3+G/3+B/3);
imshow(w);
subplot(1,2,1), imshow(w),title('B&W');
subplot(1,2,2),imshow(img),title('RGB');