clc;clear;

img = imread('track.PNG');
[x,y,~] = size(img);
trackPoints = zeros(100000,2);
counter = 1;
for i = 1:x-4
    for j = 1:y-4
        red = reshape(img(i:i+4,j:j+4,1),[],1);
        green = reshape(img(i:i+4,j:j+4,2),[],1);
        blue = reshape(img(i:i+4,j:j+4,3),[],1);
        std_r = std(double(red));
        %%std_g = std(green);
        %%std_b = std(blue);
        mean_r = mean(red);
        mean_g = mean(green);
        mean_b = mean(blue);
        if (mean_r > 230) && (mean_r < 234) && (std_r < 5) && (mean_g < 20)&& (mean_b < 20)
            trackPoints(counter,:) = [j+2,i+2];
            counter = counter+1;
        end
    end
end
trackPoints = trackPoints(1:counter-1,:);
