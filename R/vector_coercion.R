x <- c(1, "brazil", 3)
x

class(x)#character

####

x <- 1:5

y <- as.character(x)
y

as.numeric(y)

####

x <- c("1", "b", "3")

as.numeric(x)#Error: NAs introduced by coercion
