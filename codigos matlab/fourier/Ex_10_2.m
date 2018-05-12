clear; clc;
%x_n =  [1,2,0,0,0,2,1,2,0,0,0,2];
x_n = [1,2,0,0,0,2];
N_0 = length(x_n); n = (0:N_0-1);

subplot(4 ,1 ,1); stem(n,x_n); grid;
xlabel ( 'n' ) ; ylabel ( 'x_n' );
legend('Sinal de entrada',-1);

X_k = fft(x_n)/N_0 ;
k = n;

subplot(3,1,2); stem(k,abs(X_k)); grid;
xlabel ('k'); ylabel ('|X_k|');
legend('SFTD pela FFT',-1);

subplot(3,1,3); stem(k,angle(sign(round(X_k)))); grid;
xlabel ('k'); ylabel ('<X_k');
legend('SFTD pela FFT',-1);