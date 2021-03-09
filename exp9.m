%n=20
clear all;
clc;
n = input('Enter the total number of trials: ');
p=0.5;
CDF = zeros(1,n);
for k = 1:n
	PMF(k) = nchoosek(n,k)*(p^k)*((1-p)^(n-k));
	if(k==1)
    	CDF(k) = PMF(k);
	else
    	CDF(k) = CDF(k-1) + PMF(k);
	end
end
subplot(2,1,1), stairs(PMF),title('PDF'), xlabel('k'), ylabel('F(x)');
subplot(2,1,2), stem(CDF),title('CDF'), xlabel('k'), ylabel('f(x)');