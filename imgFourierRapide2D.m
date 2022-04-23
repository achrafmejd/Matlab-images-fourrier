function imgFr = imgFourierRapide2D(w)
    % La fonction retourne la transformée de fourier de la matrice w
    % La fontion fait appel à la fonction imgFourierRapide1D
    % La taille de la matrice w est une puissance de 2 
    [nl , nc ] = size(w);
    imgFr = zeros(nl,nc);
    % wl est la matrice contenant les transformées de Fourier des lignes de
    % la matrice w
    w1 = zeros(nl,nc);
    
    % La 1ère boucle calcule les transformées de fourier de chaques lignes
    % de la matrice w et les stockent dans la matrice wl
    for i=1:nl
        ligneSignal = w(i,:);
        tfr1Dligne = imgFourierRapide1D(ligneSignal);
        w1(i,:)= tfr1Dligne;
    end
    % La 2ème boucle calcule les transformées de fourier de chaque colonne
    % de la matrice wl et les stockent dans la matrice imgFr
    for j=1:nc
        colonneSignal = w1(:,j);
        tfr1Dcolonne = imgFourierRapide1D(colonneSignal);
        imgFr(:,j)= tfr1Dcolonne;
    end
end