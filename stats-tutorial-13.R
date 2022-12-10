#View(height)

heights = height$Height.Inches.

sample_height = sample(heights, 100)

s_mean = mean(sample_height)

s_size = length(sample_height)

s_stdev = sd(sample_height)

s_sterror = s_stdev / sqrt(s_size)

confidence = .95

alpha = 1 - confidence
fr_degree = s_size - 1

z_score = qt(p = alpha / 2, df = fr_degree, lower.tail = F)

lower_limit = s_mean - z_score * s_sterror
upper_limit = s_mean + z_score * s_sterror

hist(sample_height)
abline(v = s_mean, col = 'red')
abline(v = lower_limit, col = 'green')
abline(v = upper_limit, col = 'blue')
mean(heights)
