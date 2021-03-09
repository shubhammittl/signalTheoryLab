clear all;
close all;
clc;
nd1=6;
nd2=6;
t=nd1*nd2;
d1=[1 2 3 4 5 6];
d2=d1;
for i=1:length(d1)
	for j=1:length(d2)
  	x(i,j)=d1(i)+d2(j);
	end
end
y=reshape(x,1,[]);
[n,e]=hist(y,unique(y));
PDF=n/t;
CDF(1)=PDF(1);
for i=2:length(PDF)
	CDF(i)=PDF(i)+CDF(i-1);
end
subplot(2,1,1);
bar(e,CDF),title('CDF');
xlabel('x(sum of numbers on 2 dices)'),ylabel('F(x)');
subplot(2,1,2);
stem(e,PDF),title('PDF');
xlabel('x(sum of numbers on 2 dices)'),ylabel('f(x)');
  	