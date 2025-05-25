clc; clear; close all;

img = rgb2gray(imread('duke_image.jpeg'));
F = fftshift(fft2(double(img)));

[r, c] = size(img);
mask = ones(r, c);
mask(r/2-10:r/2+10, c/2-10:c/2+10) = 0;

F_filtered = F .* mask;
img_filtered = abs(ifft2(ifftshift(F_filtered)));

figure;
subplot(1,2,1), imshow(img, []), title('Original Image');
subplot(1,2,2), imshow(img_filtered, []), title('Filtered Image');
