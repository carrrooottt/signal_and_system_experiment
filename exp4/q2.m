%% a
clear all; clc;
a1 = [1, 0, 1];   % 定义系数向量a1
a2 = [1, 0.5, 1];   % 定义系数向量a2
a3 = [1, 2, 1];   % 定义系数向量a3
a4 = [1, 4, 1];   % 定义系数向量a4
ps1 = roots(a1); % 求a1的极点
ps2 = roots(a2); % 求a2的极点
ps3 = roots(a3); % 求a3的极点
ps4 = roots(a4); % 求a4的极点
% 绘制极点
plot_1 = plot(real(ps1), imag(ps1), 'x', 'markersize', 8, 'linewidth', 2); hold on;
plot_2 = plot(real(ps2), imag(ps2), 'x', 'markersize', 8, 'linewidth', 2); hold on;
plot_3 = plot(real(ps3), imag(ps3), 'x', 'markersize', 8, 'linewidth', 2); hold on;
plot_4 = plot(real(ps4), imag(ps4), 'x', 'markersize', 8, 'linewidth', 2); hold on;
legend([plot_1, plot_2, plot_3, plot_4], {'\zeta =0', '\zeta =1/4', '\zeta =1', '\zeta =2'}, 'Location', 'northwest')
grid on;
axis([-4, 0.5, -1.2, 1.2]) % 调整显示范围
xlabel('\sigma');ylabel('j\omega');
%% 计算这4个系统的频率响应
omega = [-5:0.1:5];
b = 1;
figure; freqs(b, a1, omega);
figure; freqs(b, a2, omega);
figure; freqs(b, a3, omega);
figure; freqs(b, a4, omega);
