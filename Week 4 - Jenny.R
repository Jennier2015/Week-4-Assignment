
# reference code: Chapter 6 from R for Everyone 
theUrl <- "https://raw.github.com/vincentarelbundock/Rdatasets/master/csv/lattice/environmental.csv"
envir <- read.table(file = theUrl, header = TRUE, sep = ",")
head(envir)

#View(envir)

install.packages("ggplot2")
require(ggplot2)

# histogram: code referenced Chapter 7 from R for Everyone
hist(envir$radiation, main = "Radiation Histogram", xlab = "Radiation")
# We can see that the radiation from 200 to 300 occurs most frequently.

# Boxplot: code referenced Chapter 7 from R for Everyone
boxplot(envir$temperature)
# The boxplot of temerature shows us the median of temperature is around 78.


# Scatterplots: code referenced Chapter 7 from R for Everyone
plot(temperature ~ wind, data = envir)
# From the scatterplots, we can see that there is no obvious relationship between temperature and wind.