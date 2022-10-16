#Title: Estimates of Location (p12)
#Author: Li Zhaozhi

########################################
# Read in data files
state <- read.csv("C:/Users/ZhaozhiLi/Desktop/统计编程/assignments/estimates-of-location/state.csv")

# find the mean of population
mean(state[['Population']])

# find the trimmed mean of population
mean(state[['Population']], trim = 0.1)

# find the median of population
median(state[['Population']])

# install & run matrixStats
library(matrixStats)

# calculate weighted mean
weighted.mean(state[['Murder.Rate']], w=state[['Population']])

# calculate weighted median
weightedMedian(state[['Murder.Rate']], w=state[['Population']])
