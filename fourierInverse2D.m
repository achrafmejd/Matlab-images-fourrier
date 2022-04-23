function frinv = fourierInverse2D(Fr)
    % La fonction retourne la transform�e de fourier inverse de Fr
    % Fr est une transform�e de fourier de  2 dimension
    % la fonction fait appel � la fonction imgFourierLente2D
    frinv = conj(imgFourierLente2D(conj(Fr)));
    frinv = frinv / numel(Fr);
end