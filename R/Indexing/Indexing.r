#INDEXING

library(dslabs)
library(tidyverse)
data (murders)

murder_rate <- murders$total/murders$population*100000

index <- murder_rate <= 0.71
#if we return index, it will show true and false values


murders$state[index]
#this will return each satate with true values of a murder_rate

sum(index)
#we can sum logical vectors to count TRUE ones. TRUE = 1, FASLSE = 0.
#sum(index) will return 5



#lets try another example: We want to move to mountains with rate <=1
safe <- murder_rate <= 1
west <- murders$region == "West"

index <- safe & west

murders$state[index]