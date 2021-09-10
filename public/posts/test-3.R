library(help='datasets')
library(ggplot2)

ggplot(airquality, aes(x = Solar.R)) +
  geom_histogram(color = 'darkgray', fill = 'white', binwidth = 25) +
  labs(x = 'Solar Radiation', y = 'Count', title = 'Histogram of Solar Radiation') + 
  geom_vline(aes(xintercept = mean(airquality$Solar.R, na.rm = TRUE), color = 'mean'), show.legend = TRUE, size = 2) +
  geom_vline(aes(xintercept = median(airquality$Solar.R, na.rm = TRUE), color = 'median'), show.legend = TRUE) 
  

