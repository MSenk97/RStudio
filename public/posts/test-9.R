library(ggplot2)
library(dplyr)
library(ggthemes)
library(extrafont)
library(readr)
library(readxl)
# font_import()
fonts()

avocado_data = read_csv("avocado.csv")

avocado_data %>%
  ggplot(aes(x = Date, y = AveragePrice, color = region)) +
  geom_line()

medals_data = read_excel("medals_data.xlsx")

medals_data %>%
  ggplot(aes(x="", y=Total, fill=group)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)

