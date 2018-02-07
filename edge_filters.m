%%%%%%%%%%%%% Sobel

image=imread('C:\Users\Aditya\Desktop\Android\lena.tiff','tiff');
ref_image=imread('C:\Users\Aditya\Desktop\Android\lena_edge.tif','tiff');

grey_image=rgb2gray(image);
edge_image_sobel=edge(grey_image,'Sobel',0.08);

mse_sobel=0;
for i=1:512
    for j=1:512
        mse_sobel=mse_sobel+sqrt(1/262144*abs((edge_image_sobel(i,j)-ref_image(i,j))));
    end
end

%%%%%%%%%%%%%% Prewitt
image=imread('C:\Users\Aditya\Desktop\Android\lena.tiff','tiff');
ref_image=imread('C:\Users\Aditya\Desktop\Android\lena_edge.tif','tiff');

grey_image=rgb2gray(image);
edge_image_prewitt=edge(grey_image,'Prewitt',0.08);

mse_prewitt=0;
for i=1:512
    for j=1:512
        mse_prewitt=mse_prewitt+sqrt(1/262144*abs((edge_image_prewitt(i,j)-ref_image(i,j))));
    end
end


%%%%%%%%%%%%%% Laplacian of Gaussian
image=imread('C:\Users\Aditya\Desktop\Android\lena.tiff','tiff');
ref_image=imread('C:\Users\Aditya\Desktop\Android\lena_edge.tif','tiff');

grey_image=rgb2gray(image);
h=fspecial('log',[7 7],0.63);
edge_log=imfilter(ref_image,h);

mse_log=0;
for i=1:512
    for j=1:512
        mse_log=mse_log+sqrt(1/262144*abs((edge_log(i,j)-ref_image(i,j))));
    end
end


subplot(2,2,1),imshow(edge_image_sobel),title('Sobel[0.09]');
subplot(2,2,2),imshow(edge_image_prewitt),title('Prewitt[0.09]');
subplot(2,2,3),imshow(edge_log),title('Laplace of Gaussian[sigma=0.63,mask=[7 7]]');
