Default=read.csv(file.choose())
Default
dim(Default)
names(Default)
attach(Default)
summary(Status)
125/(125+656)
plot(Status,Credit.Score)
glm(Status~Credit.Score,data=Default,family="binomial")
summary(glm(Status~Credit.Score,data=Default,family="binomial"))
summary(glm(Status~Credit.Score+EMI.Ratio,data=Default,family="binomial"))
library(rms)
vif(glm(Status~Credit.Score+EMI.Ratio+Work.Exp,data=Default,family="binomial"))
plot(Work.Exp,Credit.Score)
cor(Work.Exp,Credit.Score)
summary(glm(Status~EMI.Ratio+Work.Exp,data=Default,family="binomial"))
logistic.Status=glm(Status~EMI.Ratio+Work.Exp,data=Default,family="binomial")
logistic.Status
exp(0.3583)
plot(Status,Work.Exp)
logistic.Status$fitted.values
plot(Status,logistic.Status$fitted.values)
Status.predicted=ifelse(logistic.Status$fitted.values<0.95,"Default","No")
table(Status,Status.predicted)
summary(Status)
library(pROC)
roc(Status,logistic.Status$fitted.values)
plot.roc(Status,logistic.Status$fitted.values)




