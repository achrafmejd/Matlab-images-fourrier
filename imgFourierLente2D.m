function imgFr = imgFourierLente2D(S)
    % La fonction retourne la transformée de Fourier de l'image  S
    % La fonction utilise l'algorithme Naif
    % S est de dimension 2 
    [Nl,Nc]=size(S);
    imgFr = zeros(Nl,Nc);
    for k = 0:Nl-1
        for l=0:Nc-1
            for n = 0:Nl-1
                for m=0:Nc-1
                     imgFr(k+1,l+1) = imgFr(k+1,l+1) + S(n+1,m+1)*exp(-2*1j*pi*((n*k/Nl)+(m*l/Nc)));
                end
            end
        end
    end
end
