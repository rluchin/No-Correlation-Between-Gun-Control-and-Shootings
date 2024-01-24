###SIMULATE
##Credit to Rohan Alexander for this template: https://tellingstorieswithdata.com/02-drinking_from_a_fire_hose.html#torontos-unhoused-population

# Set seed
set.seed(762)

# Create a dataframe with years and months
start_date <- as.Date("2016-01-01")
end_date <- as.Date("2022-12-31")
date_seq <- seq(start_date, end_date, by = "1 month")
simulation_shootings <- data.frame(
  Date = date_seq,
  Year = year(date_seq),
  Month = month(date_seq, label = TRUE),
  Shootings = round(runif(length(date_seq), min = 0, max = 10))
)

# Review first few rows of the dataset
head(simulation_shootings)

# Save the dataset to a CSV file
write.csv(simulation_shootings, "shootings_simulation.csv", row.names = FALSE)