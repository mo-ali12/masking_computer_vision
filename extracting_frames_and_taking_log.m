ReadObj=VideoReader('wind.mp4');
ReadAllFrames=VideoReader('wind.mp4');
CurFrame = 0; %To get Specific Frames.
GetFrame = [64 65 66 67 68 69 70 71];
while hasFrame(ReadObj)
    CurImage=readFrame(ReadObj);
    CurFrame = CurFrame+1;
    if ismember(CurFrame, GetFrame)
        imwrite(CurImage, sprintf('frame%d.jpg' , CurFrame));
    end
end
%for k=1 : 120 %To See All the frames
   this_frame=readFrame(ReadAllFrames);
    thisfig=figure();
    thisax=axes('Parent', thisfig);
    image(this_frame, 'Parent', thisax);
    title(thisax, sprintf('Frame #%d' , k)); 
%end

i=imread('frame64.jpg');
i1=imread('frame65.jpg');
i2=imread('frame66.jpg');
i3=imread('frame67.jpg');
i4=imread('frame68.jpg');
i5=imread('frame69.jpg');
i6=imread('frame70.jpg');
i7=imread('frame71.jpg');
red=i5(:,:,1);
green=i6(:,:,2);
blue=i7(:,:,3);
imhist(red);
figure;
imhist(green);
figure;
imhist(blue);
figure;
img=im2double(i5);
img1=img.^7;
img2=uint8(img1*255);
imshow(img2);
figure;
img3=im2double(i6);
img4=img3.^7;
img5=uint8(img4*255);
imshow(img5);
figure;
img6=im2double(i7);
img7=img6.^7;
img8=uint8(img7*255);
imshow(img8);
figure;
img9=im2double(i3);
img10=img9.^7;
img11=uint8(img10*255);
imshow(img11);
figure;
imshow(i5);
figure;
imshow(i6);
figure;
imshow(i7);

clc
clear


