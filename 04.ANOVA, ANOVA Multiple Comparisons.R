setwd("F:/R/Statistics/Statistics in R/Data file")

d=read.csv("DietWeightLoss.csv")
summary(d)           

names(d)
class(d$WeightLoss)
class(d$Diet)

help(aov)

boxplot(d$WeightLoss~d$Diet) 

# Ho mean weight is the same for all diets

ANOVA1=aov(d$WeightLoss~d$Diet)
ANOVA1

summary(ANOVA1)

attributes(ANOVA1)

ANOVA1$coefficients

TukeyHSD(ANOVA1)

plot(TukeyHSD(ANOVA1))

plot(TukeyHSD(ANOVA1),las=1)

