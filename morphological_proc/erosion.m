% -------------------------------------------------------------------
%  Generated by MATLAB on 23-Feb-2018 15:57:41
%  MATLAB version: 9.0.0.341360 (R2016a)
% -------------------------------------------------------------------
saveVarsMat = load('erosion.mat');

image = saveVarsMat.image; % <312x252x3 uint8> too many elements

image_grey = saveVarsMat.image_grey; % <312x252 logical> too many elements

res_img = saveVarsMat.res_img; % <312x252 logical> too many elements

struc_el = saveVarsMat.struc_el; % <1x1 strel> unsupported class

clear saveVarsMat;