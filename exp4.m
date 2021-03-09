clear all; clc;
len = input('Enter the length on sample data to be generated: ');
ord = input('Enter the order of central moment: ');
x = double(uint8(rand(1,len)*9));
n = length(x);
[num,element]=hist(x,unique(x));
P = num/len;
n = length(element);
v = 0;
m = 0;
for i=1:n
   	m = m + (element(i) * P(i));
end
for i=1:n
   	v = v + ((element(i)-m)^ord * P(i));
end
fprintf('\n\nThe Generated Random Data: '); x
fprintf('\n\nThe Order - %d Central Moment is %d \n\n',ord,v);
 
