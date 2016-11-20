getwd()

setwd("/Users/mimica/Google Drive/CodeDevelopment/Udacity/data-analysis-with-r--ud651/module2")

home_dir <- getwd()

statesInfo <- read.csv("stateData.csv")
head(statesInfo)

subset(statesInfo, state.region = 1)

example: dataSet[ROWS, COLUMNS]
statesInfo[statesInfo$state.region == 1, ]

stateSubsetBracket <- statesInfo[statesInfo$state.region == 1, ]
head(stateSubsetBracket)
dim(stateSubsetBracket)

#You'll need to install and load the package knitr in order to use the KNIT HTML button . Run the following commands 
# in the RStudio console to install and load knitr. 
install.packages('knitr', dependencies = T)
library(knitr)

