v1=[-1;0;2];
v2=[1;0;5];
v3=[0;1;4];
v4=[0;-1;3];

v1r=rotation_func(v1,45);
v2r=rotation_func(v2,45);
v3r=rotation_func(v3,45);
v4r=rotation_func(v4,45);

plot3([v1r(1),v2r(1),v3r(1),v4r(1),v1r(1)],[v1r(2),v2r(2),v3r(2),v4r(2),v1r(2)],[v1r(3),v2r(3),v3r(3),v4r(3),v1r(3)]);

v1rpx=projection_func(v1r(1),v1r(3),1);
v1rpy=projection_func(v1r(2),v1r(3),1);
v2rpx=projection_func(v2r(1),v2r(3),1);
v2rpy=projection_func(v2r(2),v2r(3),1);
v3rpx=projection_func(v3r(1),v3r(3),1);
v3rpy=projection_func(v3r(2),v3r(3),1);
v4rpx=projection_func(v4r(1),v4r(3),1);
v4rpy=projection_func(v4r(2),v4r(3),1);
plot([v1rpx,v2rpx,v3rpx,v4rpx,v1rpx],[v1rpy,v2rpy,v3rpy,v4rpy,v1rpy]);

Zwpavg=v1r(3)+v1r(3)+v1r(3)+v1r(3)/4;
V1wp(1)=v1r(1)/Zwpavg;
V1wp(2)=v1r(2)/Zwpavg;
V2wp(1)=v2r(1)/Zwpavg;
V2wp(2)=v2r(2)/Zwpavg;
V3wp(1)=v3r(1)/Zwpavg;
V3wp(2)=v3r(2)/Zwpavg;
V4wp(1)=v4r(1)/Zwpavg;
V4wp(2)=v4r(2)/Zwpavg;
plot([V1wp(1),V2wp(1),V3wp(1),V4wp(1),V1wp(1)],[V1wp(2),V2wp(2),V3wp(2),V4wp(2),V1wp(2)]);

plot([v1rpx,v2rpx,v3rpx,v4rpx,v1rpx],[v1rpy,v2rpy,v3rpy,v4rpy,v1rpy],'k');
fill([v1rpx,v2rpx,v3rpx,v4rpx,v1rpx],[v1rpy,v2rpy,v3rpy,v4rpy,v1rpy],'r');
hold on;
plot([V1wp(1),V2wp(1),V3wp(1),V4wp(1),V1wp(1)],[V1wp(2),V2wp(2),V3wp(2),V4wp(2),V1wp(2)],'k');
fill([V1wp(1),V2wp(1),V3wp(1),V4wp(1),V1wp(1)],[V1wp(2),V2wp(2),V3wp(2),V4wp(2),V1wp(2)],'g');
hold off;
