clear all;
clc;
varx=1;
N=10000;
u=randn(1,N);
mean = 0;
x = mean + sqrt(varx)*u;
[n,elements]=hist(x,20);
PDF = n/N;
CDF(1) = PDF(1);
for i=2:length(elements)
	CDF(i) = CDF(i-1)+PDF(i);
end
subplot(3,1,1), plot(x), xlabel('n'), ylabel('x[n]');
subplot(3,1,2), plot(elements,PDF),title('PDF'), xlabel('x'), ylabel('F(x)');
subplot(3,1,3), plot(elements,CDF),title('CDF'), xlabel('x'), ylabel('f(x)');