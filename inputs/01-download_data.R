###ACQUIRE
##Credit to Rohan Alexander for this template: https://tellingstorieswithdata.com/02-drinking_from_a_fire_hose.html#torontos-unhoused-population

package <- show_package("4bc5511d-0ecf-487a-9214-7b2359ad8f61")
package

toronto_shootings <-
  list_package_resources("4bc5511d-0ecf-487a-9214-7b2359ad8f61") |>
  filter(name ==
           "shootings-firearm-discharges - 4326.csv") |>
  get_resource()

write_csv(
  x = toronto_shootings,
  file = "toronto_shootings.csv"
)

write_csv(
  x = toronto_shootings,
  file = "unedited_data.csv"
)

#Review both head and tail of csv file to confirm correct start and end dates
head(toronto_shootings)
tail(toronto_shootings)