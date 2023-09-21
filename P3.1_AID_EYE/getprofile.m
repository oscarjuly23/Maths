%Function that reads the AIDEYE project 
%Gerard Ginovart and La Salle Campus Barcelona
function [ perfil ] = getprofile()

% Factor that modifies the resolution of the profile. 
factordelmation = 7
%Input of the image
[img_filename, img_pathname] = uigetfile({'*.jpg';'*.jpeg';'*.png'},'Choose an image');
img = imread(strcat(img_pathname,img_filename));
%Processation of the image finding the first black pixel of each column.  
[rows, columns ] = size(img);
x=[];
y=[];
index=1;
for i=1:columns
    for j=1:rows
        if img(j,i)== 0
            x(index)=i;
            y(index)=rows-j;
            index = index+1;
            break
        end
    end
end
perfil=y(1:factordelmation:end);
perfil = medfilt1(perfil,10);
end

