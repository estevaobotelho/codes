

murders <- mutate(murders, rate = total/population*100000)

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total

plot(population_in_millions, total_gun_murders)

log10_pop <- log10(murders$population)
log10_murders <- log10(total_gun_murders)

plot(log10_pop, log10_murders)

#hist(murders$rate)

#boxplot(rate~region, data = murders)