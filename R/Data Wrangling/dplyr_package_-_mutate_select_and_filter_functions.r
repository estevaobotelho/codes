
#Package dplyr


#adding collumn "rate" to the table murders
murders <- mutate(murders, rate=total/population*100000)

head(murders)


#FILTER the entire table by rates there are lower or equal to 0.71
filter(murders, rate <= 0.71)


#sometimes we work with tables with hundreds of columns;
#lets SELECT the ones we are working with
new_table <- select(murders, state, region, rate)

filter(new_table, rate <= 0.71)


#using the pipe to get all above in one row (dplyr)
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)



