% Response to a Disturbance T_d(s) = 1/s for K = 20 and K = 100
%
numg = [1];
deng = [1 1 0];
sysg = tf(numg, deng);
K1 = 100;
K2 = 20;
num1 = [11 K1];
num2 = [11 K2];
sys1 = tf(num1, den);
sys2 = tf(num2, den);
%
sysa = feedback(sysg, sys1);
sysa = minreal(sysa);
sysb = feedback(sysg, sys2);
sysb = minreal(sysb);
%
t = [0:0.01:2.5];
[y1, t] = step(sysa, t);
[y2, t] = step(sysb, t);
%
subplot(211);
plot(t, y1);
title('Disturbance Response for K=100');
xlabel('Time(s)');
ylabel('y(t)');
grid;

subplot(212);
plot(t, y2);
title('Disturbance Response for K=20');
xlabel('Time(s)');
ylabel('y(t)');
grid;