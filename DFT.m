clc;
clear all;
close all;

% declare and initialize variables
x=input("Enter the sequence:\n");
N=length(x);
X=zeros(N,1);

for k=0:(N-1)
    for n=0:(N-1)
        X(k+1) = X(k+1)+x(n+1)*exp(-j*2*pi*n*k/N);
    end
end
disp('DFT is: ');
n=0:N-1;
X

subplot(411)
stem(n,x)
title("Input discrete signal:")

%grid on;
subplot(412)
stem(n,abs(X))
title("Magnitude response of DFT:")

subplot(413)
stem(n,angle(X))
title("Phase response of DFT:")



% IDFT

Y=zeros(N,1);

for n=0:(N-1)
    for k=0:(N-1)
        Y(n+1) = Y(n+1)+X(k+1)*(1/N)*exp(j*2*pi*n*k/N);
    end
end
disp("IDFT is:")
Y
subplot(414)
stem(abs(Y))
title("IDFT of X(k):")



