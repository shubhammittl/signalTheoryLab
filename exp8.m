% l=4, k=20
clear all;
clc;
l = input('Enter the mean of Random Variable: ');
k = input('Enter the value of k: ');
CDF = zeros(1,k);
for i = 1:k
	PMF(i) = (l^i)*exp(-l)/factorial(i);
	if(i==1)
    	CDF(i) = PMF(i);
	else
    	CDF(i) = CDF(i-1) + PMF(i);
	end
end
subplot(2,1,1), stem(PMF),title('PDF'), xlabel('k'), ylabel('F(x)');
subplot(2,1,2), stem(CDF),title('CDF'), xlabel('k'), ylabel('f(x)');