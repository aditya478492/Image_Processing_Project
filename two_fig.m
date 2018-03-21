plot3(-1,0,2,'o','LineWidth',6);
hold on;
plot3(1,0,5,'o','LineWidth',6);
hold on;
plot3(0,1,4,'o','LineWidth',6);
hold on;
plot3(0,-1,3,'o','LineWidth',6);
hold on;
text([-1,1,0,0,-1],[0,0,1,-1,0],[2,5,4,3,2],'\leftarrow 3D projection');
hold on;
fill3([-1,1,0,0],[0,0,1,-1],[2,5,4,3],'r');
hold on;
plot([V1x,V2x,V3x,V4x,V1x],[V1y,V2y,V3y,V4y,V1y],'k');
fill([V1x,V2x,V3x,V4x,V1x],[V1y,V2y,V3y,V4y,V1y],'b');
hold on;
plot([V1(1),V2(1),V3(1),V4(1),V1(1)],[V1(2),V2(2),V3(2),V4(2),V1(2)],'k');
fill([V1(1),V2(1),V3(1),V4(1),V1(1)],[V1(2),V2(2),V3(2),V4(2),V1(2)],'g')
hold off;