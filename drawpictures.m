clear
clc
warning off;

path = 'C:\Users\wangs\Desktop\codes - equal';
addpath(genpath(path));

file = load([path,'/all-caltech']);
time = file.timeCopy;
time = time';
x = [5:5:30] ;
y1 = time(1,:);
y2 = time(2,:);
y3 = time(3,:);



plot(x,y1,'r*-','LineWidth',3); hold on;
plot(x,y2,'b^-','LineWidth',3); hold on;
plot(x,y3,'gx-','LineWidth',3); hold on;

xlabel('sample number pf each class'),ylabel('sec');
legend('MKC-LKA','MKKM-MR','Ours');