# simple linear regression is useful for examining or modelling the relationship between 2 numeric variables



setwd('F:/R/Statistics')
R=read.csv("LungCapData.csv")
R
#check names
names(R)
class(R$Age)
class(R$LungCap)
plot(R$Age,R$LungCap,main="Scatterplot of LungcapData")
cor(R$Age,R$LungCap)

help(lm)

mod<-lm(R$LungCap~R$Age)
mod
summary(mod)

attributes(mod)

mod$coefficients
mod$coef

coef(mod)

plot(R$Age,R$LungCap,main="Scatterolot")
abline(mod)
abline(mod,col=2,lwd=3)

coef(mod)
confint(mod)

confint(mod,level=0.99)

summary(mod)

anova(mod)

sqrt(2.3)
