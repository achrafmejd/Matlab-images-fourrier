function frinv = fourierInverse1D(Fr)
    % La fonction retourne la transform�e de fourier inverse de Fr
    % Fr est une transform�e de fourier de  1 dimension
    % la fonction fait appel � la fonction imgFourierLente1D
    frinv = conj(imgFourierLente1D(conj(Fr)));
    frinv = frinv / length(Fr);
end