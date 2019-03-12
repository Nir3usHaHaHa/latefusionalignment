clear
clc
warning off;

path = 'C:\Users\wangs\Desktop\codes\';
addpath(genpath(path));


file = load([path,'/tauproteinfold']);
acc = file.accval9;
x = [0.1:0.1:1];
y1 = acc(12,:);
y2 = acc(14,:);
y3 = acc(13,:);


plot(x,y1,'bo-','MarkerSize',10);
hold on;
plot(x,y2,'r^-','MarkerSize',10);
hold on;
plot(x,y3,'kx-','MarkerSize',10);
grid on;

xlabel('The effect of the parameter \tau on ProteinFold'),ylabel('acc');
legend('Ours Adaptive','Ours Average','MKC-LKA');