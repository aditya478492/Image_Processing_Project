%%%%%%%%%%% Canny Edge Detector %%%%%%%%%%%
image=imread('C:\Users\Aditya\Desktop\Android\lena.tiff','tiff');
ref_image=imread('C:\Users\Aditya\Desktop\Android\lena_edge.tif','tiff');

grey_image=rgb2gray(image);
edge_image=edge(grey_image,'Canny',0.09,2);

mse=0;
for i=1:512
    for j=1:512
        mse=mse+sqrt(1/262144*(abs(edge_image(i,j)-ref_image(i,j))));
    end
end

