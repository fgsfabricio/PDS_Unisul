clear; clc;
Omega = pi/12;
N_0 = 2*pi/Omega; n = (0:N_0-1);
x_n = 1 + sin(pi/12*n+3*pi/8);

subplot(3,1,1); stem(n ,x_n);
xlabel ( 'n' ) ; ylabel ( 'x_n' ); axis([0 N_0-1]);
legend('Sinal de entrada',-1);

X_k = fft(x_n)/N_0 ;
k = n;

subplot(3,1,2); stem(k,abs(X_k)) ;
xlabel ('k'); ylabel ('|X_k|'); axis([0 N_0-1]);
legend('SFTD pela FFT',-1);

subplot(3,1,3); stem(k,angle(sign(round(X_k))));
xlabel ('k'); ylabel ('<X_k'); axis([0 N_0-1]);
legend('Fase pela FFT',-1);
