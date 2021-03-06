install.packages('doBy')
library(ggplot2)
library(plyr)
library(doBy)
setwd('/Users/kanna/Sandbox/kaggle/walmart/')
train <- read.csv('train.csv')

summary(train)
summaryBy(Weekly_Sales~Store, data=train, FUN=c(median))
res1 <- summaryBy(Weekly_Sales~c(Store,Dept), data=train, FUN=c(median))
write.csv(res1, file='store_dept_median.csv')
res2 <- summaryBy(Weekly_Sales~c(Store,Dept,Date), data=train, FUN=c(median))
write.csv(res2, file='store_dept_median_date.csv')
