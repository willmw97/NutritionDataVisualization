#Author: Marshal Will
#This project visualizes some data from a nutrition data set.
  

NutritionData <- read.csv("NutritionData.csv")
library(ggplot2)


ggplot(data=NutritionData, aes(x=SatFat, y=TotalFat, color=Location)) + geom_point() +
  labs(title="Scatterplot of Total Fat by Saturated Fat")


ggplot(data=NutritionData) + geom_histogram(mapping = aes(x=SatFat, y=(..density..)), breaks=seq(0, 30, by = 1), col="black", fill="grey") +
  geom_density(mapping = aes(x=SatFat), lty=2) + labs(title = "Histogram of Saturated Fat", x="Saturated Fat", y="Density")


ggplot(data=NutritionData) + geom_density(mapping = aes(x=SatFat, col=Location))


ggplot(data = NutritionData) + geom_point(mapping = aes(x=SatFat, y=TotalFat, col=Location)) + facet_wrap(~Type)

  