clear all;
clc;
n = 5;
p = 0.5;
CDF = zeros(1,n);
for k = 1:n
	PMF(k) = (-1)*(p^k)/(k*log(1-p));
	if(k==1)
    	CDF(k) = PMF(k);
	else
    	CDF(k) = CDF(k-1) + PMF(k);
	end
end
subplot(2,1,1), plot(PMF),title('PDF'), xlabel('x'), ylabel('F(x)');
subplot(2,1,2), stairs(CDF),title('CDF'), xlabel('x'), ylabel('f(x)');
