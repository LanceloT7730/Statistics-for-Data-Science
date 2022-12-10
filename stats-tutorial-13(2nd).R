
#petal_lengths = iris$petal_length
petal_lengths = rnorm( n = length(iris$petal_length),  mean = mean(iris$petal_length), sd = sd(iris$petal_length) )
sample_petal_length = sample(petal_lengths, 100)

s_mean = mean(petal_lengths)

s_size = length(sample_petal_length)

s_std = sd(sample_petal_length)

s_sterror = s_std / sqrt(s_size)

confidence = .95

alpha = 1 - confidence

fr_degree = s_size - 1

z_score = qt(p = alpha / 2, df = fr_degree, lower.tail = F)
#z_score <- 1.96

lower_interval = s_mean - z_score * s_sterror
upper_interval = s_mean + z_score * s_sterror

hist(sample_petal_length, breaks = 15)

abline(v = s_mean, col = 'red')
abline(v = lower_interval, col = 'green')
abline(v = upper_interval, col = 'blue')
mean(petal_lengths)
mean(sample_petal_length)