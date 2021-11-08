Carseats
help(Carseats)
names(Carseats)
attach(Carseats)
hist(Sales)
summary(Sales)
plot(Price,Sales)
cor(Price,Sales)
lm(Sales~Price)
abline(13.64192,-0.05307)
summary(lm(Sales~Price))
plot(ShelveLoc,Sales)
summary(lm(Sales~ShelveLoc))
summary(ShelveLoc)
summary(lm(Sales~ShelveLoc+Price))
lm(log(Sales[Sales>0])~log(Price[Sales>0]))
summary(lm(Sales~.,data=Carseats))
summary(lm(Sales~Price+CompPrice+ShelveLoc+Advertising+Income+Age,data=Carseats))

lm.Sales=lm(Sales~Price+CompPrice+ShelveLoc+Advertising+Income+Age,data=Carseats)
lm.Sales
predict(lm.Sales)[1]
residuals(lm.Sales)[1]
Sales[1]
plot(Sales,predict(lm.Sales))
cor(Sales,predict(lm.Sales))^2
hist(residuals(lm.Sales))
summary(lm.Sales)
set.seed(1)
index=sample(400,100)
index
Carseats.test=Carseats[index,]
dim(Carseats.test)
Carseats.train=Carseats[-index,]
dim(Carseats.train)

lm.train.Sales=lm(Sales~Price+CompPrice+ShelveLoc+Advertising+Income+Age,data=Carseats.train)
summary(lm.train.Sales)
plot(Carseats.test$Sales,predict(lm.train.Sales,newdata=Carseats.test))
predict(lm.train.Sales,newdata=Carseats.test)
plot(Carseats.test$Sales,predict(lm.train.Sales,newdata=Carseats.test))
cor(Carseats.test$Sales,predict(lm.train.Sales,newdata=Carseats.test))

vif(lm.Sales)



