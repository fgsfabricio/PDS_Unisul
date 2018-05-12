%--------------------------------------------------------------------------
% Código referente ao livro DAFX 2nd edition, copyright Wiley & Sons 2011, 
% disponivel em http://www.dafx.de. It may be used for
% educational purposes and not for commercial applications
% without further permission.
%--------------------------------------------------------------------------

%clear;
[x,FS,NBITS]=wavread('dog.wav');
[h,FS2,NBITS2]=wavread('s1_r1_o.wav');

figure(1)
subplot(3,1,1);
plot(0:7999,x(1:8000));ylabel('x[n]');
title('Sinal do Cachorro');
subplot(3,1,2);
plot(0:999,x(1:1000));ylabel('x[n]');
subplot(3,1,3);
stem(600:800,x(600:800),'.');ylabel('x[n]'); xlabel('n \rightarrow');

%x1=x(1:60000,1);
%h1=h(1:60000,1);

% Executar na janela de comandos:

%y=conv(x,h);
%soundsc(x1, FS, NBITS);
%soundsc(h1, FS, NBITS);
%soundsc(y, FS, NBITS);