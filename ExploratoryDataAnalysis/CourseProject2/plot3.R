
# set the working directory to the directory where the data is present 
# the path in the following line is just an example, 
# uncomment replace with your own path
# setwd('E:/MOOCs/Coursera/Data Science - Specialization/Exploratory Data Analysis/Course Project 2')

# read in the two datasets
pmed <- readRDS("summarySCC_PM25.rds")
scc <- readRDS("Source_Classification_Code.rds")

# subset out data for baltimore city
baltimorePMed <- pmed[pmed$fips == "24510",]

# disabling scientific notation
options(scipen=999)

# loading ggplot2 package
library(ggplot2)

# getting emissions for each year and type
pmedByType <- aggregate(Emissions ~ year + type, sum, data=baltimorePMed)

# plotting required graph
png(filename="plot3.png",width=800, height=600, units="px")
g <- ggplot(pmedByType, aes(year,Emissions)) + 
     geom_line(color='steelblue', size=0.75, linetype='dashed') +
     geom_point(shape=22, size=4, color='steelblue',bg='lightblue') +
     facet_grid(type ~ .) +
     facet_wrap(~ type,nrow=2) +
     theme_bw() + 
     labs(title = 'Baltimore City emission trend') +
     labs(x = 'Year') +
     labs(y = expression(PM[2.5]*' emission in tonnes'))
     
print(g)
dev.off()
