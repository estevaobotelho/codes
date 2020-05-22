my.data <- data.frame(Columnname = 1:3,
                      column_name2 = 4:6,
                      columnnamethree = 7:9 )
str(my.data)

names(my.data)

names(my.data) <- c("column_name",
                    "column_name2",
                    "columnnamethree")

names(my.data)[2] <- "column_name_2"

#for huge datasets we can use the name as index
names(my.data)[names(my.data)=="columnnamethree"] <- "column_name_3"
names(my.data)

#for multiple substitutions
names(my.data) <- gsub("_", ".", names(my.data))
names(my.data)


#if we have row names like this:
rownames(my.data) <- c("name1", "name2", "name3")
my.data

#we can put these names into a new column and set the rownames to NULL
my.data$names <- rownames(my.data)
rownames(my.data) <- NULL
my.data
