function subGibbs(N)
    N = 3; % 定义N的大小
    T = 4; % 矩形波脉冲周期
    w = 2 * pi / T;
    T1 = 1; % 矩形波高电平时间
    % 定义句柄函数ak (k≠0)
    ak = @(k) sin(k * w * T1) / (k * pi);
    % 在[-2,2]上绘图
    t = -2:0.00001:2;

    xn = zeros(1, length(t)); % 设置xn初始值

    %利用循环结构计算在指定的N下的求和结果
    for k = -N:N
        if k ~= 0   % 处理k不等于0的时候的结果
            xn = xn + ak(k) * exp(1i * k * w .* t);
        else    % 处理k等于0的时候的结果
            xn = xn + 2 * T1 / T;
        end
    end

    % 绘制求和结果
    fs=plot(t, xn); hold on;
    % 绘制x轴和y轴
    line([-2, 2], [0, 0], 'color', '#666', 'linewidth', 0.7); hold on;
    line([0, 0], [1.2, 0], 'color', '#666', 'linewidth', 0.7); hold on;
    % 绘制9%超量对应的直线
    maxVal = line([-2, 2], [1.09, 1.09], 'linestyle', '--', 'color', '#999', 'linewidth', 0.7); hold on;
    % 绘制原来的方波信号
    squareWave = plot([-2, -1, -1, 1, 1, 2], [0, 0, 1, 1, 0, 0], 'color', '#0072BD', 'linewidth', 1); hold on;
    % 添加文本标注
    text(-1, -0.08, '-T_1'); hold on; 
    text(1, -0.08, 'T_1'); hold on;
    xlabel('t'); ylabel('x_n(t)');

    % 添加图例
    legend([fs, squareWave, maxVal], {'傅里叶级数', '原始方波', '9%的超量'}, 'FontName', '微软雅黑', 'FontSize', 10);
    title(legd, ['N=', num2str(N)])

    % 设置样式
    ax = gca;
    [text1.FontName, text2.FontName, label2.FontName, label1.FontName, ax.FontName] = deal('Times New Roman');
    [text1.FontSize, text2.FontSize, label2.FontSize, label1.FontSize] = deal(12);
    [text1.FontWeight, text2.FontWeight, label2.FontWeight, label1.FontWeight, ax.FontWeight] = deal('Bold');
    [label2.FontAngle, label1.FontAngle, ax.FontAngle] = deal('italic');
    ax.FontSize = 10;


end
