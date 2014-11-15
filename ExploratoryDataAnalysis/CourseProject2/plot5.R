
# set the working directory to the directory where the data is present 
# the path in the following line is just an example, 
# uncomment replace with your own path
# setwd('E:/MOOCs/Coursera/Data Science - Specialization/Exploratory Data Analysis/Course Project 2')

# read in the two datasets
pmed <- readRDS("summarySCC_PM25.rds")
scc <- readRDS("Source_Classification_Code.rds")

# subset out data for baltimore city and motor vehicles
baltimorePMed <- pmed[pmed$fips == "24510" & pmed$type=='ON-ROAD',]

# get the total emissions for each year
totalpm <- aggregate(Emissions~year, baltimorePMed, sum)

# disabling scientific notation
options(scipen=999)

# loading ggplot2 package
library(ggplot2)

# plotting required graph
png(filename="plot5.png")
g <- ggplot(totalpm, aes(year,Emissions)) + 
     geom_line(color='steelblue', size=0.75, linetype='dashed') +
     geom_point(shape=22, size=4, color='steelblue',bg='lightblue') +
     theme_bw() + 
     labs(title = 'Baltimore City motor vehicle sources emission trend') +
     labs(x = 'Year') +
     labs(y = expression(PM[2.5]*' emission in tonnes'))

print(g)
dev.off()
