#Method 1: select the file maually
stats <- read.csv(file.choose())
stats

#Method 2: Set WD and Read Data
getwd()
setwd("D:\\R\\Rcode")
getwd()
rm(stats)
stats <- read.csv("P2-Demographic-Data.csv")

#-------------Exploring Data----------------
stats
nrow(stats)
ncol(stats)
head(stats, n = 10)
tail(stats)
str(stats)
runif()

#-------------Using the $ sign--------------
stats$Internet.users
levels(stats$Income.Group)

#-------------Basic Operatiton with a DF-------
stats[1:10,]
stats[3:9,]
stats[c(4,100),]

#Remember how the [] work:
is.data.frame(stats[1,])
stats[,1]
is.data.frame(stats[,1])
is.data.frame(stats[,1,drop = F])

#multiply columns
stats$Birth.rate * stats$Internet.users

#add colum
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
head(stats)

#test of knowledge
stats$xyz <- 1:5
head(stats, n=10)
#remove a column
head(stats)
stats$MyCalc <- NULL
stats$xyz <- NULL

#------------Filtering Data Frame---------------
head(stats)
filter <- stats$Internet.users < 2
stats[filter,]

stats[stats$Birth.rate > 40, ]
stats[stats$Birth.rate > 40 & stats$Internet.users < 2, ]
stats[stats$Income.Group == "High income",]
stats[stats$Country.Name == "Malta",]

#--------------Introduction to qplot()--------
install.packages("ggplot2")
library(ggplot2)
?qplot
qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Income.Group,y=Birth.rate)
qplot(data=stats,x=Income.Group,y=Birth.rate, size=I(10))
qplot(data=stats,x=Income.Group,y=Birth.rate, size=I(10),colour=I("blue"))
qplot(data=stats,x=Income.Group,y=Birth.rate, geom="boxplot")


#--------------------------visualizing what we need---------
qplot(data=stats, x= Internet.users, y=Birth.rate)
qplot(data=stats, x= Internet.users, y=Birth.rate,size=I(4))
qplot(data=stats, x= Internet.users, y=Birth.rate,colour=I("red"),size=I(4))
qplot(data=stats, x= Internet.users, y=Birth.rate,colour=Income.Group,size=I(5))

























