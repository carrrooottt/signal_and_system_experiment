clear all; clc;
% 定义x[n]
x = [1, 1, zeros(1, 30)];
N = length(x);
a = (1 / N) * fft(x); %求DTFS

figure('position', [0, 10, 1000, 500]) %设置图窗位置和大小

% 绘制a的实部
subplot(2, 1, 1)
stem(real(a), 'linewidth', 1) % 利用stem绘制对应数值，并设置线宽为1
xlabel('k')
ylabel('Re(a)')
xlim([0,33]) % 设置x轴的范围

% 绘制a的虚部
subplot(2, 1, 2)
stem(imag(a), 'linewidth', 1); % 利用stem绘制对应数值，并设置线宽为1
xlabel('k')
ylabel('Im(a)')
xlim([0,33]) % 设置x轴的范围

% 保存结果到'3-1-1.png'
print('-dpng', '-r1200', '3-1-1')