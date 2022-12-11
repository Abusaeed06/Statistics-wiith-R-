# Check linear regression assumption in R 

# while the assumption of a linear model are never perfectly met,we must still check if they are reasonable assumptions to work with!

setwd('F:/R/Statistics/Statistics in R/Data file')
R=read.csv("LungCapData.csv")
R

names(R)
class(R$LungCap)
class(R$Age)

# check names
names(R)
# calculation pearson's correlation between age and lungcap

help(lm)
cor(R$LungCap,R$Age)

mod<-lm(R$LungCap~R$Age)

plot(R$Age,R$LungCap,main="Scatterolot")
abline(mod)
abline(mod,col=2,lwd=3)

summary(mod)

####ASSUMPTIONS
#1,The Y-value (or the errors,"e") are independent!
#2.The y-values can be expressed as a linear function of the X variable 
#3. Variable of observations around the regression linw (the residual SE)is constant(homoscedasticity)
#4.For given value of X,Y values (or thne error)are normally distributed


plot(mod)

Hit<Return>to see next plot:
  
Hit<Return>to see next plot:

Hit<Return>to see next plot:
  
Hit<Return> to see next plot:

  
par(mfrow=c(2,2))

plot(mod)

par(mfrow=c(1,1))
