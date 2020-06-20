DataMaha = read.csv("paddy_production_in_maha_season_1952-2012.csv", header = TRUE)
DataMaha = DataMaha[61,]
DataMaha

DataYala = read.csv("paddy_production_in_yala_season_1952_2012.csv" , header = TRUE)
DataYala = DataYala[60,]
DataYala



library(tidyverse)

DataMaha = DataMaha %>% 
  rename(
    Season = Maha.Season
  )
DataMaha

DataYala = DataYala %>% 
  rename(
    Season =  Yala.Season
  )
DataYala

data = rbind(DataMaha, DataYala)
data
summary(data)


barplot(data$Production.000.Mt, main="Production in 2011",
        xlab="Season", col=c("darkblue","red"),
        legend = rownames(counts))

barplot(data$Harvested.000.Acres, main="Harvested Acre in 2011",
        xlab="Season", col=c("darkblue","red"),
        legend = rownames(counts))


barplot(data$Average.Yield.Bushels.Acre, main="Average Yield BushelsAcre in 2011",
        xlab="Season", col=c("darkblue","red"),
        legend = rownames(counts))

slices <- c(data$ Harvested.000.Acres)
lbls <- c(data$Season)
pie(slices,labels = lbls, main="Pie Chart for Harvested Area")

plot(brainData$Height, brainData$Weight, col="blue", cex.axis = 0.5)


######### Not Used ######################################################################################

cov(data$ Harvested.000.Acres, data$Production.000.Mt)

par(mfrow=c(1, 2))   # arranged in 1 rows and 2 columns(sowe can see two graphs in one line)
plot(brainData$Height, brainData$Weight, col="blue", cex.axis = 0.5)
#cex.axis set font size axis labels
plot(brainData$MRI_Count, brainData$PIQ, col="red", cex.axis = 0.5)

ggplot2.barplot(data=data, xName="Season", yName='Production.000.Mt.')

counts <- table(data$Production.000.Mt.)
barplot(counts, main="Production in 2011",
        xlab="Season", col=c("darkblue","red"),
        legend = rownames(counts))

slices <- c(data$Production.000.Mt)
lbls <- c(data$Season)
barplot(slices,labels = lbls, main="Pie Chart of Gender Frequency")

















