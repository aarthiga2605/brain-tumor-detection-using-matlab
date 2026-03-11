clc;
clear;
close all;

img = imread('bpss_img.jpg');

if size(img,3) == 3
    img = rgb2gray(img);
end

figure, imshow(img);
title('Original MRI Image');

img_double = im2double(img);

[m, n] = size(img_double);
pixel_values = reshape(img_double, m*n, 1);

k = 3;
[cluster_idx, cluster_center] = kmeans(pixel_values, k);

clustered_img = reshape(cluster_idx, m, n);

figure, imshow(clustered_img, []);
title('Clustered Image');

[~, tumor_cluster] = max(cluster_center);
tumor_mask = (clustered_img == tumor_cluster);

figure, imshow(tumor_mask);
title('Detected Tumor Region');

tumor_mask = bwareaopen(tumor_mask, 50);

figure, imshow(tumor_mask);
title('Final Tumor Segmentation');

figure;
imshow(img);
hold on;
visboundaries(tumor_mask, 'Color', 'r');
title('Tumor Boundary Detection');
