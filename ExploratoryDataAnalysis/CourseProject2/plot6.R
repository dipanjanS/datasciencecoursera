
# set the working directory to the directory where the data is present 
# the path in the following line is just an example, 
# uncomment replace with your own path
# setwd('E:/MOOCs/Coursera/Data Science - Specialization/Exploratory Data Analysis/Course Project 2')

# read in the two datasets
pmed <- readRDS("summarySCC_PM25.rds")
scc <- readRDS("Source_Classification_Code.rds")

# subset out data for baltimore city and motor vehicles
baltimorePMed <- pmed[pmed$fips == "24510" & pmed$type=='ON-ROAD',]

# subset out data for los angeles county and motor vehicles
losangelesPMed <- pmed[pmed$fips == "06037" & pmed$type=='ON-ROAD',]

# get the total emissions for each year in baltimore city
totalpmBaltimore <- aggregate(Emissions~year, baltimorePMed, sum)

# get the total emissions for each year in los angeles county
totalpmLosAngeles <- aggregate(Emissions~year, losangelesPMed, sum)

# merge the above emissions into a single data frame
comparepm <- merge(x=totalpmBaltimore,y=totalpmLosAngeles,by.x='year',by.y='year')
names(comparepm) <- c('Year', 'baltimoreEmissions', 'laEmissions')

# calculate relative delta pm2.5 emission change per year by setting baseline
# emission in 1999 as zero and bringing both emissions to the same scale
comparepm$baltimoreEmissions <- comparepm$baltimoreEmissions - comparepm$baltimoreEmissions[comparepm$Year==1999]
comparepm$laEmissions <- comparepm$laEmissions - comparepm$laEmissions[comparepm$Year==1999]

# load required packages
library(ggplot2)
require(grid)

# plotting required graph
png(filename="plot6.png",width=800, height=600, units="px")
g <- ggplot(comparepm, aes(Year)) + 
      geom_line(aes(y=baltimoreEmissions, color='baltimoreEmissions'), size=0.75,linetype='dashed') +
      geom_line(aes(y=laEmissions, color='laEmissions',), size=0.75,linetype='dashed') +
      geom_point(aes(y=baltimoreEmissions),size=4,shape=22, bg='orange') +
      geom_point(aes(y=laEmissions),size=4,shape=22, bg='lightblue') +
      theme_bw() + 
      theme(legend.position="right",legend.key.size = unit(0.5, "cm")) +
      scale_colour_discrete(name  ="Region",
                       breaks=c("laEmissions", "baltimoreEmissions"),
                       labels=c("Los Angeles county", "Baltimore city")) +
      labs(title = 'Motor vehicle sources emission trend comparison') +
      labs(x = 'Year') +
      labs(y = expression('Relative delta '*PM[2.5]*' emission changes per year in tonnes'))


print(g)
dev.off()

