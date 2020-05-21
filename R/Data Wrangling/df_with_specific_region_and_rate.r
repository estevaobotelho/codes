#CREATING Filtered DATA FRAMES

murders <- mutate(murders, rate = total/population*100000, rank = rank(-rate))

# Create a table, call it my_states, that satisfies both the conditions: States in Northest or West and rate less than 1

my_states <- filter(murders, region %in% c("Northeast", "West") & rate < 1)

# Use select to show only the state name, the murder rate and the rank

my_states %>% select(state, rate, rank)

#................
#ONE LINE OF CODE
my_states <- murders %>% mutate(rate = total/population*100000, rank = rank(-rate)) %>% filter(region %in% c("Northeast","West") & rate < 1) %>% select(state, rate, rank)

