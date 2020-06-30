clear 
clc
n=0:5;
x_n=n>=0;         % 定义x[n]
h_n=0:5;          % 定义h[n]
y=conv(h_n,x_n);  % 通过conv函数求卷积
n=0:10;           % 在x轴上的取值范围
stem(n,y)         % 利用stem函数描绘数据序列