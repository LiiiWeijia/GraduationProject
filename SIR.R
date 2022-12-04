#SIR
#rm(list=ls(all=TRUE)) 
library(MASS)

#install.packages('dr')
library(dr)

#generate data
set.seed("6851") x1=runif(200, 1,2);
set.seed("6751") x2=runif(200, 1,2);
set.seed("6651") x3=runif(200, 1,2);
set.seed("6551") x4=runif(200, 1,2);
set.seed("6451") x5=runif(200, 1,2);
x1<-scale(x1);
x2<-scale(x2);
x3<-scale(x3);
x4<-scale(x4);
x5<-scale(x5);
e1=rnorm(200, mean=0, sd=0.1);
y=(x1+x2+x3+x4+x5)^2+e1;
s<-c(x1,x2,x3,x4,x5);
dim(s)<-c(200,5);
par(mfrow=c(1,2));
BX<-scale(x1+x2+x3+x4+x5);
plot(BX,y);

mod3 <- dr(y ~ x1+x2+x3+x4+x5, method="sir", nslices = 10);

summary(mod3);
B3<- t(dr.basis(mod3,1));
dim(B3)<-c(5,1);
B3<-B3*(1/B3[1,1]);
SirCOP1=s%*%B3;
SirCOP1<-scale(SirCOP1);plot(SirCOP1,y);
