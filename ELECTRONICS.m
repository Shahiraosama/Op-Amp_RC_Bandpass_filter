w1=2*pi*10*10^6;
w2=2*pi*20*10^6;
w3=2*pi*(20/3)*10^6;
W4=2*pi*30*10^6;
W0=2*pi*14.14*10^6 ; %square root of W1*W2
BW=w2-w1; %the bandwidth
s=tf('s');
H=(0.3268)/(s^3+0.7379*(s^2)+1.022*s+0.3268)
A=0.3268;
B=[1 0.7379 1.022 0.3268];
[X,Y]=lp2bp(A,B,W0,BW);
tf(X,Y)
Poles=[1 4.636e07 2.771e16 8.13e23 2.188e32 2.889e39 4.918e47];
roots(Poles) %to get the poles of BPF transfer function