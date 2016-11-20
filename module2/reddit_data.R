getwd()
setwd("/Users/mimica/Google Drive/CodeDevelopment/Udacity/data-analysis-with-r--ud651/module2")
home_dir <- getwd()

# Read data from file
reddit <- read.csv('reddit.csv')

dim(reddit)
head(reddit)
tail(reddit)
str(reddit)
summary(reddit)

table(reddit$employment.status)

levels(reddit$age.range)

# Install these libraries
#install.packages('ggplot2', dependencies = T)
library(ggplot2)

# Install these libraries
install.packages('devtools', dependencies = T)
library(devtools)
install_version("colorspace","1.2-4")


qplot(data = reddit, x = age.range)
qplot(data = reddit, x = income.range)

# Put in order, i.e, setting Levels or Ordered Factors
levels(reddit$age.range)
reddit$age.range <- ordered(reddit$age.range, levels = c("Under 18","18-24","25-34","35-44","45-54","55-64","65 or Above"))
qplot(data = reddit, x = age.range)

# Alternative solution
reddit$age.range <- factor(reddit$age.range, levels = c("Under 18","18-24","25-34","35-44","45-54","55-64","65 or Above"), ordered = TRUE)
qplot(data = reddit, x = age.range)

# Put in order, i.e, setting Levels or Ordered Factors for income
levels(reddit$income.range)
reddit$income.range <- ordered(reddit$income.range, levels = c("Under $20,000", "$20,000 - $29,999", "$30,000 - $39,999", "$40,000 - $49,999", "$50,000 - $69,999", "$70,000 - $99,999",  "$100,000 - $149,999", "$150,000 or more"))
qplot(data = reddit, x = income.range)
