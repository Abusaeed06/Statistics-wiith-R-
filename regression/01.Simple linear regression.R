# The oredictor vector.
x<-c(5.1,5.5,5.8,6.1,6.4,6.7,6.4,6.1,5.10,5.7)

# The response vector
y<-c(63,66,69,72,75,78,75,72,69,66)

#apply the lm() function

relation<-lm(x~y)
relation

summary(relation)

# find weight of a persons with height 170.

a<-data.frame(x=5.7)
result<-predict(relation,a)
print(result)

plot(y,x)
abline(relation ,col="red")

