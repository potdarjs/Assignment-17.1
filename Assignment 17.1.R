
# input age in months & height in cm

age <- c(16:27)
height <- c(61.1,61.2,61.8,62.8,63.5,76.1,77,78.1,78.2,78.8,79.7,79.9)


# 1) check that age and height have the same number of elements 
# use iselse and lenght. output will be tell the whether the both vectors have same elements

ifelse (length(age) == length(height), paste("ok"), paste("missing elements"))

# 2) Create a scatterplot to determine the relationship between age and height 

plot(age, height, type = "p", col = "red", 
     xlab="Age (months)", 
     ylab="Height (cm)", 
     main="Scatterplot of Age vs Height")

# 3) Create a "linear model" to fits the data above 
linear_model <- lm(age~height)      # saved it to variable
linear_model                        # display lines model
summary(linear_model)               # statistical information

# 4) Find the equation of the line of best fit 
coeff <- coefficients(linear_model)  # assign coefficients to a object
eq <- paste0("y = ", round(coeff[1],2), " + ", round(coeff[2],2), "*x ")  # equation
eq
abline(linear_model)
