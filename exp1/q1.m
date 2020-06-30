%定义n从0-31
n=0:31;                                     
x1_n=sin(pi.*n/4).*cos(pi.*n/4);            % 对应x1[n]
x2_n=cos(pi.*n/4).^2;                       % 对应x1[n]
x3_n=sin(pi.*n/4).*cos(pi.*n/8);            % 对应x1[n]
% 利用subplot将figure分成三份，依次使用stem绘图
subplot(3,1,1)
stem(n,x1_n)
subplot(3,1,2)
stem(n,x2_n)
subplot(3,1,3)
stem(n,x3_n)
