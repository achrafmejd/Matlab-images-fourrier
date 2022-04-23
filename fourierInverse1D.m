function frinv = fourierInverse1D(Fr)
    % La fonction retourne la transformée de fourier inverse de Fr
    % Fr est une transformée de fourier de  1 dimension
    % la fonction fait appel à la fonction imgFourierLente1D
    frinv = conj(imgFourierLente1D(conj(Fr)));
    frinv = frinv / length(Fr);
end