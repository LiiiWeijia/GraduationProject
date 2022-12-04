#安装和导入一大堆包
#install.packages('mgarchBEKK')
#install.packages('mvtnorm')
#install.packages('tseries')

library(mvtnorm)
library(tseries)
library(mgarchBEKK)

## Simulate series:
simulated <- simulateBEKK(2, 1000, c(1,1))

## Prepare the matrix:
simulated <- do.call(cbind, simulated$eps)

## Estimate with default arguments:
estimated <- BEKK(simulated)

## Not run: 
## Show diagnostics:
diagnoseBEKK(estimated)

## End(Not run)