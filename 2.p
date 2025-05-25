clc; clear; close all;

img = imread('duke_image.jpeg');
if size(img,3)==3, img = rgb2gray(img); end

alpha = 1.5; beta = 30;
c_img = imadjust(img, [], [], alpha);
bc_img = uint8(min(c_img + beta, 255));
eq_img = histeq(img);
adp_img = adapthisteq(img);

figure;
imgs = {img, c_img, bc_img, eq_img, adp_img};
titles = {'Original', 'Contrast', 'Bright+Contrast', 'Hist Eq', 'Adaptive Eq'};
for i = 1:5
    subplot(2,4,i); imshow(imgs{i}); title(titles{i});
end
subplot(2,4,6); imhist(img); title('Orig Hist');
subplot(2,4,7); imhist(c_img); title('Contrast Hist');
subplot(2,4,8); imhist(eq_img); title('Hist Eq');

disp('Done.');
