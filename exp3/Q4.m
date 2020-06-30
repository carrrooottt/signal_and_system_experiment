clear all;clc;
Omega_0 = 2 * pi * 1000;
T = 1/8192;
n = [0:8191];
t = n * T;
x_t = sin(Omega_0 * t);
x_n = sin(Omega_0 * n * T);
subplot(2, 1, 1)
stem(x_n(1:50));
subplot(2, 1, 2)
plot(x_t(1:50))

[X, w] = ctfts(x_t, T);
figure(2)
plot(w,angle(X))
fullscreen()