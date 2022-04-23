function tfr = fourier2n(si)
    n = numel(si);
    if n == 1
        tfr = si;
    else
        k=(0:n/2 - 1);
        wpk = fourier2n(si(1:2:(n-1)));
        wik = fourier2n(si(2:2:n));
        w = exp(-2*pi*1i*k/n);
        tfr = [wpk + w.*wik, wpk - w.*wik];
    end
end