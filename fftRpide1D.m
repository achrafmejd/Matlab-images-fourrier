function wf = fftRpide1D(w)
    if mod(length(w),2)==0 % w signal de taille N une puissance de 2
        N=length(w);
        wp=zeros(1,N/2);
        wi=zeros(1,N/2);
        WpF=zeros(1,N/2);
        WiF=zeros(1,N/2);
        wfk=zeros(1,N/2);
        wfkN=zeros(1,N/2);
        % wpair et imapre 
        for i=1:N/2
           wp(i)=w(2*i);
           wi(i)=w(2*i-1);
        end
        % calcul wpair et impaire tf
        for k=1:N/2
            for m=1:N/2
                b=N/2;
                a=exp(-2*pi*1i*k*m/b);
                WpF(k) = WpF(k) + wp(m)*a;
                WiF(k) = WiF(k) + wi(m)*a;
            end
        end
        % fourier de k et de k+N/2
        for k=0:N/2-1
            wfk(k+1)=WiF(k+1)+exp(-2*1i*pi*2*k/N)*WpF(k+1);
            wfkN(k+1)=WiF(k+1)-exp(-2*1i*pi*2*k/N)*WpF(k+1);
        end
        wf=[wfk, wfkN];
    end
end