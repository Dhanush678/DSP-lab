clc;
clear all;
close all;

% declare and initialize variables
x=input("Enter the sequence:\n");
N=length(x);
X=zeros(N,1);

disp('DFT is: ');
X=fft(x);
X
n=0:N-1;

subplot(311)
stem(n,x)
title("Input discrete signal:")

%grid on;
subplot(312)
stem(n,abs(X))
title("Magnitude response of DFT:")

subplot(313)
stem(n,angle(X))
title("Phase response of DFT:")



% IDFT

disp("IDFT is:")
Y=ifft(X);
Y
subplot(314)
stem(abs(Y))
title("IDFT of X(k):")



