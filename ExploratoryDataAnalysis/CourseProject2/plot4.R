
# set the working directory to the directory where the data is present 
# the path in the following line is just an example, 
# uncomment replace with your own path
# setwd('E:/MOOCs/Coursera/Data Science - Specialization/Exploratory Data Analysis/Course Project 2')

# read in the two datasets
pmed <- readRDS("summarySCC_PM25.rds")
scc <- readRDS("Source_Classification_Code.rds")

# getting source code classification details for coal combustion related sources
scc_coal_comb <- scc[
                      grepl("combustion", scc$SCC.Level.One, ignore.case=TRUE) &
                      !grepl("charcoal", scc$SCC.Level.Three, ignore.case=TRUE) &
                      (grepl("coal", scc$SCC.Level.Three, ignore.case=TRUE) |
                       grepl("lignite", scc$SCC.Level.Three, ignore.case=TRUE) |
                       grepl("anthracite", scc$SCC.Level.Three, ignore.case=TRUE)),
                    ]
# subsetting out data for emissions due to coal sources
pmed_coal_comb <- subset(pmed, SCC %in% scc_coal_comb$SCC)

# getting the total emissions for each year
totalpm <- aggregate(Emissions~year, pmed_coal_comb, sum)

# disabling scientific notation
options(scipen=999)

# loading ggplot2 package
library(ggplot2)

# plotting required graph
png(filename="plot4.png")
g <- ggplot(totalpm, aes(year,Emissions)) + 
     geom_line(color='steelblue', size=0.75, linetype='dashed') +
     geom_point(shape=22, size=4, color='steelblue',bg='lightblue') +
     theme_bw() + 
     labs(title = 'Coal sources emission trend') +
     labs(x = 'Year') +
     labs(y = expression(PM[2.5]*' emission in tonnes'))

print(g)
dev.off()
