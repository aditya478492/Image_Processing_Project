image=imread('C:\Users\Aditya\Desktop\matlab\morphological_proc\test_samp.jpg');
inputimage = rgb2gray(image);
edge_image = edge(inputimage, 'canny'); % binary output

r1=100;
[x, y] = size(edge_image); % input image dimension
acc = zeros(x,y,r1); % accumulator i.e. hough_space

for xi=1:x
    for yj=1:y
         if edge_image(xi, yj) == 1 %% this is an edge point  
             for r=70:100
                 for t=0:360
                     a=x-r*cos(t*pi/180);
                     b=y-r*sin(t*pi/180);
                     a=round(a);
                     b=round(b);
                     if a>x
                         acc=zeros(a,y,r1);
                     end
                     if b>y
                         acc=zeros(x,b,r1);
                     end
                      if a>=x && b>=y
                         acc=zeros(a,b,r1);
                     end
                     if a>0 && b>0
                         acc(a,b,r)=acc(a,b,r)+1;
                     end
                     
                 end
             end
         end
    end
end

[M,I]=max(acc(:));
[x,y,z]=ind2sub(size(acc),I);
temp=sort( acc, 'descend' )

