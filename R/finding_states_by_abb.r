# Store the 3 abbreviations in abbs in a vector (remember that they are character vectors and need quotes)

abbs <<- c("AK", "MI", "IA")

# Match the abbs to the murders$abb and store in ind

ind <<- match(abbs, murders$abb)
ind

# Print state names from ind

murders$state[ind]