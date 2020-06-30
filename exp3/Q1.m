% 载入音频数据
load splat
y = y(1:8192);
N = 8192;
fs = 8192;
sound(y, fs);
subplot(2, 1, 1); % 画出原始波形
plot(y);
Y = fftshift(fft(y));
y = ifft(fftshift(Y));
y = real(y);
Y1 = conj(Y);
y1 = ifft(Y1);  
sound(real(y1), fs);
subplot(2, 1, 2); %画出变换后的波形
plot(real(y1));
