scicv_Init();
a = imread('group.png');
a = resize(a , [100,100]);
subplot(1,4,1)
matplot(a);
ga = cvtColor(a , CV_BGR2GRAY);
[thresh , gat] = threshold(ga, 125 , 255 , THRESH_BINARY);
th2 = 100;
canny = Canny(gat, th2 , th2*2 , 3);
subplot(1,4,2);
matplot(canny);

img_cornerHarris = cornerHarris(ga, 7, 5, 0.05);

img_cornerHarris_norm = normalize(img_cornerHarris, 0, 255, NORM_MINMAX, CV_32FC1, []);
img_corners = convertScaleAbs(img_cornerHarris_norm);
subplot(1,4,3)
matplot(img_corners);
[thres2, sam] = threshold(img_corners, 125 , 255 , THRESH_BINARY);
corners =0 ;
sam
subplot(1,4,4);
matplot(sam);
for i = 1:99
    for j = 1:99 
        if sam(i,j) > 0 && sam(i,j) ~= sam(i-1,j) && sam(i,j) ~= sam(i, j-1) && sam(i-1 , j-1) ~= sam(i,j) && sam(i,j)~= sam(i-1, j+1)then
            corners = corners +1;
            //sam(i,j) = corners; 
            
            
        end;
    end
end
disp(corners)
