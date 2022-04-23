function imgFr = imgFourierLente1D(S)
    % La fonction retourne la transformée de fourier du Signal
    % La fonction utilise l'algorithme naif
    % S represente le signal de dimension 1 
    N = length(S);
    imgFr = zeros(1,N);
    for k = 0:N-1
        for n = 0:N-1
            imgFr(k+1) = imgFr(k+1) + S(n+1)*exp(-2*1j*pi/N*n*k);
        end
    end
end
