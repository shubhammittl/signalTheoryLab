clear all;
clc;
varx=2;
N=10000;
u=rand(1,N);
PDF(1) = u(1);
for i=1:N
	x(i) = sqrt((-1)*2*varx*log(1-u(i)));
end
[n,elements]=hist(x,1000);
PDF = n/N;
CDF(1) = PDF(1);
for i=2:length(elements)
	CDF(i) = CDF(i-1)+PDF(i);
end
subplot(2,1,1), plot(elements,PDF),title('PDF'), xlabel('x'), ylabel('F(x)');
subplot(2,1,2), plot(elements,CDF),title('CDF'), xlabel('x'), ylabel('f(x)');
 
