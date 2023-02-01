function [ar,arsig]=autocorell(y,nr)
%ACF  Autocorrelation function
%     ACF computes autocorrelation function of a time series
%     and it's standard deviation (Bartlett aproximation):
%     [C1 SIG] = ACF(Y,NR) -- C1 is autocorrelation function,
%     SIG is its standard deviation.
%     ACF(Y,NR) for column vector Y representing series,
%     NR being the number of lags (if not present, autocorrelation
%     for all possible lags is computed)
%
n=length(y);
if nargin==1
   nr=n-1;
end
%Calculating the autocovariance function
ym=mean(y);  
for k=0:nr
  ycov(k+1,1)=(y(1:n-k)-ym)*(y(1+k:n)-ym)'/n;
end
%Calculating the autocorrelation function
ar=ycov/ycov(1);
ar=ar(2:length(ar));
ar=ar'; 
%Calculating its standard deviation
for k=0:length(ar)-1
  arsig(k+1,1)=sqrt((1+2*sum((ar(1:k)).^2))/n);
end
