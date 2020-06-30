function [X, w] = ctfts(x, T)
    %ctfts - Description
    %
    % Syntax: [X,w] = ctfts(x,T)
    %
    % Long description
    N = length(x);
    X = fftshift(fft(x, N)) * (2 * pi / N);
    w = linspace(-1, 1 - 1 / N, N) / (2 * T);
end
