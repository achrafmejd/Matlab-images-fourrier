function imgFr=imgFourierRapide1D(S)
    % La foNctioN retourNe la traNsformée de fourier du sigNal S
    % La foNctioN utilise l'algorithme de Cooley-Tukey
    % S est de dimeNsioN 1 
    N=length(S);
    imgFr=zeros(1,N);
    if N==1
        imgFr(1)=S(1);
    else
        % Wpaire contient les valeurs de S d'indices paires
        Wpaire=imgFourierRapide1D(S(2:2:N));
        % Wimpaire contient les valeurs de S d'indices impaires
        Wimpaire=imgFourierRapide1D(S(1:2:N));
        for k=0:N/2-1
                wfk(k+1)=Wimpaire(k+1)+exp(-2*1i*pi*k/N)*Wpaire(k+1);
                wfkn(k+1)=Wimpaire(k+1)-exp(-2*1i*pi*k/N)*Wpaire(k+1);
        end
        imgFr=[wfk,wfkn];
    end
end