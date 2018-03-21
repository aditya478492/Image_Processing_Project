image=imread('C:\Users\Aditya\Desktop\matlab\morphological_proc\lena.tiff');
%%thresholding
image_grey=im2bw(image,0.5);
%% structuring element
struc_el=strel('disk',3);
image_res3=imdilate(image_grey,struc_el);

struc_el=strel('disk',1);
image_res5=imdilate(image_grey,struc_el);
%%subtraction
 imshow(image_res5-image_grey);