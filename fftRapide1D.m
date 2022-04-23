function tfr=fftRapide1D(w)
n=length(w);
tfr=zeros(1,n);
if n==1
    tfr(1)=w(1);
else
    paire=fftRapide1D(w(2:2:n));
    impaire=fftRapide1D(w(1:2:n));
    for k=0:n/2-1
            wfk(k+1)=impaire(k+1)+exp(-2*1i*pi*k/n)*paire(k+1);
            wfkN(k+1)=impaire(k+1)-exp(-2*1i*pi*k/n)*paire(k+1);
    end
    tfr=[wfk,wfkN];

end
end