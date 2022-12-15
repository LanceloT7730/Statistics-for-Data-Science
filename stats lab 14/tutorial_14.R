#Assume that SteelTest ltd, needs to assess and 
#certify the quality of produced by UnitedSteel thick steel cables 
#so that they could withstand to an average breaking strength of 5 metric tons.
#If an average breaking strength is less than 5,000 kg,
#then the quality of the product is not appropriate, and no quality certificate will be issued.
#The steel cables with an average breaking strength in excess of 5,000 kg may get a higher quality certificate. 
#The certification company collected a random 64 samples of steel twigs

hypothesis_mean <- 5000
breaking_strenth <- cable$Breaking.Strength
breaking_strenth
sample_size <- length(breaking_strenth)

sample_mean <- mean(breaking_strenth)

sample_stdev <- sd(breaking_strenth)

sample_st_error <- sample_stdev / sqrt(sample_size)

t_score <- (sample_mean - hypothesis_mean) / sample_st_error

#get p value
print(2*pt(t_score, df = sample_size - 1, lower.tail =  FALSE))
  