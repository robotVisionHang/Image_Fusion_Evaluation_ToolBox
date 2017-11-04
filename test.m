im1 = imread('s1_1.jpg');
im1=rgb2gray(im1);
im2=imread('s1_2.jpg');
im2=rgb2gray(im2);

% my
my_result=load('my_1.mat','my_result');
my_metric = fusionAssess(im1,im2,my_result.my_result);
%dwt 
dwt_result = load('dwt_result_5.mat','Y');
dwt_metric = fusionAssess(im1,im2,dwt_result.Y);
% nsct 
nsct_result = load('nsct_5.mat','F1');
nsct_metric = fusionAssess(im1,im2,nsct_result.F1);
% im
im_result = load('im_5.mat','F');
im_metric = fusionAssess(im1,im2,im_result.F);
% gf
gf_result = load('gf_5.mat','F');
gf_metric = fusionAssess(im1,im2,gf_result.F);
% nsct-pcnn
pcnn_result = load('pcnn_5.mat','F');
pcnn_result.F=uint8(pcnn_result.F);
pcnn_metric = fusionAssess(im1,im2,pcnn_result.F);
% dsift
dsift_result = load('dsift_5.mat','F');
dsift_metric = fusionAssess(im1,im2,dsift_result.F);

disp('my:');
disp(my_metric);
disp('dwt:');
disp(dwt_metric);
disp('nsct:');
disp(nsct_metric);
disp('im:');
disp(im_metric);
disp('gf:');
disp(gf_metric);
disp('pcnn:');
disp(pcnn_metric);
disp('dsift:');
disp(dsift_metric);


