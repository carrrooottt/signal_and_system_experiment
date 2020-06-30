n=-10:10;               % 定义n的范围
delta_n=n==0;           % 定义 δ[n]
x1_n=delta_n;           % x[n]
x2_n=2*delta_n;         % 2*x[n]
x3_n=x1_n+x2_n;            
y1_n=sin(pi.*x1_n/2);   % x1_n产生的响应
y2_n=sin(pi.*x2_n/2);   % x2_n产生的响应
y3_n=sin(pi.*x3_n/2);   % x3_n产生的响应
% x1_n、x2_n产生的响应的和
y3_add=y1_n+y2_n;
% 如果符合线性性质，那么他们的图形应该重叠       
stem(n,y3_n)            % x3_n产生的响应的图形
hold on
stem(n,y3_add)          % 其余两个相应的和