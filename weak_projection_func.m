%% Weak perspective projection function
function [V1, V2, V3, V4] = weak_projection_func(v1, v2, v3, v4)
Zavg=v1(3)+v1(3)+v1(3)+v1(3)/4;
V1(1)=v1(1)/Zavg;
V1(2)=v1(2)/Zavg;
V2(1)=v2(1)/Zavg;
V2(2)=v2(2)/Zavg;
V3(1)=v3(1)/Zavg;
V3(2)=v3(2)/Zavg;
V4(1)=v4(1)/Zavg;
V4(2)=v4(2)/Zavg;
end
