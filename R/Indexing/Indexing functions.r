#INDEX FUNCTIONS

library(dslabs)
library(tidyverse)
data (murders)

murder_rate <- murders$total/murders$population*100000

#let's see murder rate for several states unsing MATCH
index <- match(c("New York", "Florida", "Texas"), murders$state)
murder_rate[index]

index

murder_rate[index] 

#Is Boston, Dakota and Washington states?
c("Boston", "Dakota", "Washington") %in% murders$state
