function matFourier=fftRapide(matImg)

N = length(matImg);
Wpair=zeros(int8(N/2),1)';
Wimpair=zeros(int8(N/2),1)';

WpF=zeros(int8(N/2),1)';
WiF=zeros(int8(N/2),1)';

Wk=zeros(int8(N/2),1)';
WkN=zeros(int8(N/2),1)';

if N==1
    matFourier=matImg;
else
    % wpair et wimpair 
    for i=1:int8(N/2)
            if mod(i,2)==0
                Wpair(i)=matImg(i);
            else
                Wimpair(i)=matImg(i);
            end
    end
    %Calcul de wpair^ and wimpar^
    for k=1:int8(N/2)
        for m=1:int8(N/2)
            b=(double(int8(N/2)));
            a=exp(-2*pi*k*m/b);
            WpF(k) = WpF(k) + Wpair(m)*a;
            WiF(k) = WiF(k) + Wimpair(m)*a;
        end
    end
    % w^k et w^int8(N/2)+k 
    for k=1:int8(N/2)
        Wk(k)=WpF(k)+exp(2*i*pi*k/N)*WiF(k);
        WkN(k)=WpF(k)-exp(2*i*pi*k/N)*WiF(k);
    end
    matFourier=Wk+i*WkN;
end