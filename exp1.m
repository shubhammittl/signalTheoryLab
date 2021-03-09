clc; clear all; close all;
subplot(3,2,1);
t=0:0.01:50;
y=sin(t);
plot(t,y);
title('sinusoidal');
xlabel('time');
ylabel('value');

subplot(3,2,2);
t=0:0.01:50;
y=cos(t);
plot(t,y);
title('cosinusoidal');
xlabel('time');
ylabel('value');

subplot(3,2,3);
t=0:0.01:50;
y=exp(t);
plot(t,y);
title('exponential');
xlabel('time');
ylabel('value');

subplot(3,2,4);
t=0:0.01:50;
y=log(t);
plot(t,y);
title('natural logarithm');
xlabel('time');
ylabel('value');

subplot(3,2,5);
t=-2:1:2;
y= [zeros(1,2) 1 zeros(1,2)];
stem(t,y);
title('unit impulse');
xlabel('time');
ylabel('value');

subplot(3,2,6);
for n=1:10
    if n>=1
        u(n)=1;
    else
        u(n)=0;
    end
    stem(u)
    xlabel('time');
    ylabel('amplitude');
    title('unit step function');
end