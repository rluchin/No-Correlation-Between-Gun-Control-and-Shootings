###CLEANED DATA TESTS

#Load required library
library(tidyverse)

##TEST 1

#Review data for accuracy

# Load the data
toronto_shootings <- read.csv("toronto_shootings_cleaned.csv")

# View the first few rows of the dataset
head(toronto_shootings)

# View the structure of the dataset
str(toronto_shootings)

# Summary statistics
summary(toronto_shootings)

#----------------------------------------------------------

##TEST 2

# Check for missing values
sum(is.na(toronto_shootings))

#----------------------------------------------------------

##TEST 3

#Visualize the data to compare with sketch and simulation

# Histogram of shootings
ggplot(toronto_shootings, aes(x = Shootings)) +
  geom_histogram(bins = 30) +
  labs(title = "Distribution of Shootings", x = "Number of Shootings", y = "Frequency")

# Time series plot (if date information is available)
ggplot(toronto_shootings, aes(x = as.Date(Date), y = Shootings)) +
  geom_line() +
  labs(title = "Shootings Over Time", x = "Date", y = "Number of Shootings")