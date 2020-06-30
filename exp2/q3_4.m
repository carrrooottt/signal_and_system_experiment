clear all; clc;

%% (a)内的基本操作
% 创建时间序号向量n
n = -20:100;
% 定义4个信号在向量n区间内的值
x1 = exp(i * pi .* n / 4);
x2 = sin(pi * n / 8 + pi / 16);
x3 = 0.9.^n;
x4 = n + 1;

%% 对以上四个信号绘图
figureWidth = 1000; % 绘图的宽度
figureHeight = 305; % 绘图的高度

%绘制x1的图形
figure('position', [0, 10, figureWidth, 2 * figureHeight]) % 设置图窗大小和位置
% 绘制x1的实部
subplot(2, 1, 1)
stem(n, real(x1), 'marker', '.', 'markersize', 10, 'linewidth', 1); hold on;
xlabel('n')
ylabel('Re(x1)')
fullscreen()
% 绘制x1的虚部
subplot(2, 1, 2)
stem(n, imag(x1), 'marker', '.', 'markersize', 10, 'linewidth', 1); hold on;
xlabel('n')
ylabel('Im(x1)')
fullscreen()
print('-dpng', '-r1200', '3-4-1') %保存到文件
% 利用循环绘制x2-x4
for k = 2:4
    figure('position', [0, 10, figureWidth, figureHeight]) % 设置图窗大小和位置
    % 利用stem绘制对应数值，并设置线宽为1,标记为'.'
    stem(n, eval(['x', num2str(k)]), 'marker', '.', 'markersize', 10, 'linewidth', 1); hold on;
    xlabel('n')
    ylabel(['x', num2str(k)])
    fullscreen() 
    print('-dpng', '-r1200', ['3-4-', num2str(k)])  %保存到文件
end

%% 求在差分方程表征的LTI系统下各个信号的输出
% LTI系统差分方程的系数矩阵
a = [1, -0.25];
b = [1, 0.9];
% LTI系统的输出
y1 = filter(b, a, x1);
y2 = filter(b, a, x2);
y3 = filter(b, a, x3);
y4 = filter(b, a, x4);

% 绘制y1的图形
figure('position', [0, 10, figureWidth, 2 * figureHeight])
subplot(2, 1, 1)
stem(0:100, real(y1(21:121)), 'marker', '.', 'markersize', 10, 'linewidth', 1);
xlabel('n')
ylabel('Re(y1)')
fullscreen();
subplot(2, 1, 2)
stem(0:100, imag(y1(21:121)), 'marker', '.', 'markersize', 10, 'linewidth', 1);
xlabel('n')
ylabel('Im(y1)')
fullscreen();
print('-dpng', '-r1200', '3-4-5') % 保存到文件

% 利用循环绘制y2-y4
for k = 2:4
    figure('position', [0, 10, figureWidth, figureHeight])
    Y = eval(['y', num2str(k)]);
    stem(0:100, Y(21:121), 'marker', '.', 'markersize', 10, 'linewidth', 1);
    xlabel('n');
    ylabel(['y', num2str(k)]);
    fullscreen();
    print('-dpng', '-r1200', ['3-4-', num2str(k + 4)]);
end

%% 求每一个的信号的H(z)
figure('position', [0, 10, 1000, 500])
h1 = y1 ./ x1;
h2 = y2 ./ x2;
h3 = y3 ./ x3;
h4 = y4 ./ x4;
% 在同一个图上绘制h1~h4的图形
h1img = plot(0:100, real(h1(21:121))); hold on;
h2img = plot(0:100, imag(h1(21:121))); hold on;
h3img = plot(0:100, h2(21:121)); hold on;
h4img = plot(0:100, h3(21:121)); hold on;
h5img = plot(0:100, h4(21:121)); hold on;
% 添加图例
legd = legend([h1img, h2img, h3img, h4img, h5img], {'Re(H_1(z))', 'Im(H_1(z))', 'H_2(z)', 'H_3(z)', 'H_4(z)'});
% 添加坐标轴标签
label_1 = xlabel('n');
lebel_2 = ylabel('H(z)');
% 设置线宽
[h1img.LineWidth, h2img.LineWidth, h3img.LineWidth, h4img.LineWidth, h5img.LineWidth] = deal(1.5);
% 设置文字样式
[label_1.FontName, lebel_2.FontName, legd.FontName] = deal('Times New Roman');
[label_1.FontSize, lebel_2.FontSize, legd.FontSize] = deal(10);

fullscreen()



