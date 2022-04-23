x = [2 3 -1 4];
N = length(x);
X = zeros(4,1);
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1)*exp(-1j*pi/2*n*k);
    end
end