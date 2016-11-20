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


