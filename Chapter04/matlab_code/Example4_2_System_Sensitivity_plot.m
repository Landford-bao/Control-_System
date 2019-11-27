% System ;Sensitivity Plot
%
K = 20;
num = [1 1 0];
den = [1 12 K];
w = logspace(-1, 3, 200);
s = w * 1i ;
n = s.^2 + s;
d = s.^2 + 12 * s + K;
S = n./d ;
n2 = s;
d2 = K;
S2 = n2./d2;
%
subplot(211);
plot(real(S), imag(S));
title('System Sensitivity to Plant Variations');
xlabel('Real(S)');
ylabel('Imag(S)');
grid;
subplot(212);
loglog(w, abs(S), w, abs(S2))
xlabel('\omega(rad/s)');
ylabel('Abs(S)');
grid;