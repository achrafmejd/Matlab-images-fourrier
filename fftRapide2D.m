function tfr2d = fftRapide2D(w)
[nl , nc ] = size(w);
w1 = zeros(nl,nc);
tfr2d = zeros(nl,nc);
        for i=1:nl
                ligneSignal = w(i,:);
                tfr1dligne = fftRapide1D(ligneSignal);
                w1(i,:)= tfr1dligne;
        end
        for j=1:nc
                colonneSignal = w1(:,j)';
                tfr1dcolonne = fftRapide1D(colonneSignal);
                tfr2d(:,j)= tfr1dcolonne';
        end
end