#Importing dataset
library(readxl)
library(ggplot2)
Penguins <- read_excel("~/Desktop/ID 529/R Projects/Penguins.xlsx")
View(Penguins) 

#Making a simple plot
ggplot(Penguins, aes(x = Species, fill = `IUCN Red List Status`)) +
  geom_bar() +
  labs(
    title = "Penguin Species and Their Conservation Status",
    x = "Species",
    y = "Count",
    fill = "Conservation Status"
  )
#This one didn't really make sense and looked too cluttered

#Trying another one
# if you want ggplot to tally up your data, use geom_bar
ggplot(Penguins, aes(x= `IUCN Red List Status`)) + 
  geom_bar()

#Modifying to add title, colors (fill), legend
ggplot(Penguins, aes(x = `IUCN Red List Status`, fill = `IUCN Red List Status`)) +
  geom_bar() +
  theme_minimal() +
  labs(
    title = "Conservation Status Distribution",
    x = "IUCN Red List Status",
    y = "Number of Species",
    fill = "Status"
  )
