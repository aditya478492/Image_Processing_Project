v1=[-1,0,2];
v2=[1,0,5];
v3=[0,1,4];
v4=[0,-1,3];

plot3(-1,0,2,'o','LineWidth',6);
hold on;
plot3(1,0,5,'o','LineWidth',6);
hold on;
plot3(0,1,4,'o','LineWidth',6);
hold on;
plot3(0,-1,3,'o','LineWidth',6);
hold on;
plot3([-1,1,0,0,-1],[0,0,1,-1,0],[2,5,4,3,2]);
hold on;
fill3([-1,1,0,0,-1],[0,0,1,-1,0],[2,5,4,3,2],'r');
hold off;

V1x=projection_func(-1,2,1)
V1y=projection_func(0,2,1)
V2x=projection_func(1,5,1)
V2y=projection_func(0,5,1)
V3x=projection_func(0,4,1)
V3y=projection_func(1,4,1)
V4x=projection_func(0,3,1)
V4y=projection_func(-1,3,1)

plot([V1x,V2x,V3x,V4x,V1x],[V1y,V2y,V3y,V4y,V1y]);
