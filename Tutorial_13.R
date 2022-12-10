#Calculating confidence intervals for population mean
#Steps: calculate mean, count sample size, find t-score and standard error

hist(height$Height.Inches.) #make sure that it's normally distributed
heights <- height$Height.Inches.

sample_height <- sample(heights, 100)

s_mean <- mean(sample_height) #mean

s_size <- length(sample_height) #sample size

s_stdev <- sd(sample_height)

s_sterror <- s_stdev/sqrt(s_size)

confidence <- .95

alpha <- 1 - confidence

fr_degree <- s_size - 1

z_score <- qt(p=alpha/2, df=fr_degree, lower.tail=F)

lower_interval <- s_mean - z_score*s_sterror
upper_interval <- s_mean + z_score*s_sterror

print(lower_interval)
print(upper_interval)