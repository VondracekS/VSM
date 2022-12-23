library(quantmod)
library(mFilter)
library(tseries)
library(lmtest)
library(forecast)
library(fGarch)
library(aTSA)

#GET DATA
getSymbols("AAPL", from = '2012-09-23', to = "2022-09-23",warnings = FALSE, auto.assign = TRUE)
getSymbols("^GSPC", from = '2012-09-23', to = "2022-09-23",warnings = FALSE, auto.assign = TRUE)

AAPL = AAPL$AAPL.Adjusted
GSPC = GSPC$GSPC.Adjusted

#RETURNS
lnAAPL = log(AAPL)
lnGSPC = log(GSPC)

retAAPL = diff(lnAAPL)
retGSPC = diff(lnGSPC)
retAAPL = retAAPL[-c(1),]
retGSPC = retGSPC[-c(1),]

#A
qAAPL = quantile(retAAPL, 0.05)
hist(retAAPL, breaks=30)
abline(v=qAAPL, col="blue", lwd=2)
plot(density(retAAPL))

qGSPC = quantile(retGSPC, 0.05)
hist(retGSPC, breaks=30)
abline(v=qGSPC, col="blue", lwd=2)
plot(density(retGSPC))

#A# ARIMA(0,0,0)
AAPLarima = arima(retAAPL, order=c(0,0,0))
AAPLcoef = AAPLarima$coef
AAPLsigma = sqrt(AAPLarima$sigma2)
varAAPL = AAPLcoef - AAPLsigma * 1.96

GSPCarima = arima(retGSPC, order=c(0,0,0))
GSPCcoef = GSPCarima$coef
GSPCsigma = sqrt(GSPCarima$sigma2)
varGSPC = GSPCcoef - GSPCsigma * 1.96

#B# Best ARIMA models
fitAAPL = auto.arima(retAAPL)
print(fitAAPL)
fitGSPC = auto.arima(retGSPC)
print(fitGSPC)

fitAAPL = arima(retAAPL, order=c(1,0,0))
fitGSPC = arima(retGSPC, order=c(5,0,5))

meanAAPL = retAAPL - fitAAPL$residuals
var_AAPL_2 = meanAAPL - sqrt(fitAAPL$sigma2)*1.96
plot(var_AAPL_2)

meanGSPC = retGSPC - fitGSPC$residuals
var_GSPC_2 = meanGSPC - sqrt(fitGSPC$sigma2)*1.96
plot(var_GSPC_2)

#C
garchAAPL <- ugarchspec(
  variance.model = list(model="sGARCH", garchOrder=c(1,1)),
  mean.model = list(armaOrder=c(1,0)),
  distribution.model = "std"
)

garchFitAAPL <- ugarchfit(spec = garchAAPL, data = retAAPL)
coef(garchFitAAPL)
r_hatAAPLgarch <- garchFitAAPL@fit$fitted.values
plot.ts(r_hatAAPLgarch)
vol_hatAAPLgarch <- ts(garchFitAAPL@fit$sigma)
plot.ts(vol_hatAAPLgarch)


garchGSPC <- ugarchspec(
  variance.model = list(model="sGARCH", garchOrder=c(1,1)),
  mean.model = list(armaOrder=c(5,5)),
  distribution.model = "std"
)

garchFitGSPC <- ugarchfit(spec = garchGSPC, data = retGSPC)
coef(garchFitGSPC)
r_hatGSPCgarch <- garchFitGSPC@fit$fitted.values
plot.ts(r_hatGSPCgarch)
vol_hatGSPCgarch <- ts(garchFitGSPC@fit$sigma)
plot.ts(vol_hatGSPCgarch)

#GARCH (1,1) volatility
GARCHvolAAPL <- r_hatAAPLgarch-1.96*(vol_hatAAPLgarch)
plot(GARCHvolAAPL)


GARCHvolGSPC <- r_hatGSPCgarch-1.96*(vol_hatGSPCgarch)
plot(GARCHvolGSPC)