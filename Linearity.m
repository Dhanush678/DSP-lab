clc;
clear all;
close all;

%input discrete signals:
x1=[2,3,4,5];
x2=[12,13,14,15];

X1=fft(x1);
X2=fft(x2);

a1=3;
a2=2;
t=0:3;


% LHS
LHS = fft((a1*x1)+(a2*x2))
subplot(221)
stem(t,abs(LHS))
title("Magnitude of LHS:");
ylabel("amplitude ---->");
xlabel("K ----->");


subplot(222)
stem(t,angle(LHS))
title("Phase of LHS:");
ylabel("Angle ---->");
xlabel("K ----->");

% RHS
RHS = (a1*X1)+(a2*X2)
subplot(223)
stem(t,abs(LHS))
title("Magnitude of RHS:");
ylabel("amplitude ---->");
xlabel("K ----->");


subplot(224)
stem(t,angle(LHS))
title("Phase of RHS:");
ylabel("Angle ---->");
xlabel("K ----->");