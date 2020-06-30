%% a-1
b1=[1,5];
a1=[1,2,3];
zs1=roots(b1);  % 零点
ps1=roots(a1);  % 极点
% 绘制零点
plot(real(zs1),imag(zs1),'o','markersize',10,'linewidth',1.5);
hold on;
% 绘制极点
plot(real(ps1),imag(ps1),'x','markersize',10,'linewidth',1.5)
grid on% 开启网格
xlabel('\sigma');ylabel('j\omega'); % 轴标签
axis([-5.5,-0.5,-1.5,1.5]) % 调整显示范围

%% a-2
figure(2)
b2=[2,5,12];
a2=[1,2,10];
zs2=roots(b2);
ps2=roots(a2);
% 绘制零点
plot(real(zs2),imag(zs2),'o','markersize',10,'linewidth',1.5);
hold on;
% 绘制极点
plot(real(ps2),imag(ps2),'x','markersize',10,'linewidth',1.5)
grid on% 开启网格
xlabel('\sigma');ylabel('j\omega'); % 轴标签
axis([-1.3,-0.95,-3.5,3.5]) % 调整显示范围

%% a-3
figure(3)
b3=[2,5,12];
a3=[1,4,14,20];
zs3=roots(b3);
ps3=roots(a3);
% 绘制零点
plot(real(zs3),imag(zs3),'o','markersize',10,'linewidth',1.5);
hold on;
% 绘制极点
plot(real(ps3),imag(ps3),'x','markersize',10,'linewidth',1.5)
grid on % 开启网格
xlabel('\sigma');ylabel('j\omega'); % 轴标签
axis([-1.3,-0.95,-3.5,3.5]) % 调整显示范围

%% c
figure(4)
b_c=[1,2,5];
a_c=[1,-3];
zs_c=roots(b_c);
ps_c=roots(a_c);
% 绘制零点
plot(real(zs_c),imag(zs_c),'o','markersize',10,'linewidth',1.5);
hold on;
% 绘制极点
plot(real(ps_c),imag(ps_c),'x','markersize',10,'linewidth',1.5)
grid on % 开启网格
xlabel('\sigma');ylabel('j\omega'); % 轴标签
axis([-1.5,3.5,-3,3]) % 调整显示范围