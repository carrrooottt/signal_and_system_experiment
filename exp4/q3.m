clear all; clc;
% 系数矩阵
b = [1];
a = [1, -0.9, 0.81];
% 对齐离散时间传输函数的长度
[b, a] = eqtflength(b, a);
dpzplot(b, a) %绘制零极点图

%% 计算极点相关数据
omega = [0:511] * pi / 256;
unitcirc = exp(1j * omega);
ps1 = roots(a);
polevectors1 = ones(2, 1) * unitcirc - ps1 * ones(1, 512);
polelength1 = abs(polevectors1);
poleangle1 = angle(polevectors1);

%% 计算零点相关数据
zs1 = roots(b);
zerovectors1 = ones(2, 1) * unitcirc - zs1 * ones(1, 512);
zerolength1 = abs(zerovectors1);
zeroangle1 = angle(zerovectors1);

%% 绘制polelength1和zerolength1的长度关于omega的曲线
figure;
plots_polelength1=plot(omega, polelength1,'linewidth',1.5); 
hold on;
plots_zerolength1=plot(omega, zerolength1,'linewidth',1.5);
xlabel('omega');ylabel('length');
grid on;
axis([0,6.3,0,2])
legend([plots_polelength1(1),plots_polelength1(2),plots_zerolength1(2)],{'polelength1','polelength1','zerolength1'})

%% 定义geomH1mag和gemH1phase
geonH1mag = prod(zerolength1) ./ prod(polelength1);
geonH1phase = sum(zeroangle1) - sum(poleangle1);
% 绘制geonH1mag和geonH1phase
figure;
subplot(221);
plot(omega, geonH1mag,'linewidth',1.5);
xlabel('omega');ylabel('magnitude');
title('geonH1mag')
grid on;
subplot(222);
plot(omega, geonH1phase,'linewidth',1.5)
xlabel('omega');ylabel('phase(degrees)');
title('geonH1phase')
grid on;
% 与freqz求得的结果进行比较
H1 = freqz(b, a, 512, 'whole');
subplot(223);
plot(omega, abs(H1),'linewidth',1.5)
xlabel('omega');ylabel('magnitude');
title('H1-magnitude')

grid on;
subplot(224);
plot(omega, angle(H1),'linewidth',1.5)
xlabel('omega');ylabel('phase(degrees)');
title('H1-phase')

grid on;
