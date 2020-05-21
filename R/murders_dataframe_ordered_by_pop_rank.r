library(dslabs)
data(murders)

pop <<- sort(murders$population, decreasing = TRUE)
# Define a variable states to be the state names from the murders data frame
states <<- murders$state[order(murders$population, decreasing = TRUE)]

# Define a variable ranks to determine the population size ranks 
ranks <<- rank(murders$population)

# Define a variable ind to store the indexes needed to order the population values
ind <<- order(ranks)

# Create a data frame my_df with the state name and its rank and ordered from least populous to most 
my_df <<- data.frame(STATES = states, POP = pop, POP_RANK = ranks[ind])
my_df


