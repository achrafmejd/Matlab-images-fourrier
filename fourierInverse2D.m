function frinv = fourierInverse2D(Fr)
    % La fonction retourne la transformée de fourier inverse de Fr
    % Fr est une transformée de fourier de  2 dimension
    % la fonction fait appel à la fonction imgFourierLente2D
    frinv = conj(imgFourierLente2D(conj(Fr)));
    frinv = frinv / numel(Fr);
end