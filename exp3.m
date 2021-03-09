clear all;
clc;
x = input('Enter the sample data : ');
n = length(x);
[num,element]=hist(x,unique(x));
P = num/n;
m = 0;
v=0;
n = length(element);
for i=1:n
	m = m + (element(i) * P(i));
	v = v + ( (element(i))^2 * P(i) );
end
v = v - m^2;
st = sqrt(v);
 
fprintf('The input sequence is ',x);
fprintf('\n\nThe mean of the input sequence is %d...\n\n',m);
fprintf('The variance of the input sequence is %d...\n\n',v);
fprintf('The standard deviation of the input...sequence is %f \n\n',st);