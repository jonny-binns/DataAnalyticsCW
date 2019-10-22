library(readr)
library(ggplot2)
library(reshape2)
dataset <- read_csv("Documents/GitHub/DataAnalyticsCW/dataset.csv")
#dataset <- read_csv("GitHub/DataAnalyticsCW/dataset.csv")
View(dataset)
print(dataset)

#graphs that show something
#Age Band x mean part A score
ggplot(dataset, aes(x=reorder(Age.Band, Part.A.Score, fun=median), y=Part.A.Score)) + geom_boxplot() + theme_bw() + labs(title="Boxplot Showing How Different Age Bands Scored In Part A", x="Age Band", y="Part A Score")
#ggplot(dataset, aes(x=Age.Band, y=Part.A.Score)) + geom_bar(stat="summary",  fun.y=mean)
#Age x part B score
ggplot(dataset, aes(x=Age, y=Part.B.Score)) + geom_point() + theme_bw() + xlim(0, 100) + ylim(0, 100) + labs(title="Scatterplot Showing How Part B Scores Change With Age", x="Age", y="Part B Score")
#Age Band x completion time x gender 
ggplot(dataset, aes(x=reorder(Age.Band, Completion.Time, fun=median), y=Completion.Time, color=Gender)) + geom_boxplot() + facet_wrap(~ Gender)
#Age x part C score x location
ggplot(dataset, aes(x=Age, y=Part.C.Score, color=Location)) + geom_point() + facet_wrap(~ Location) + theme_bw() + xlim(0, 100) + labs(title="Line Graph showing how part c scores vary with age, split by location", x="Age", y="Part C Score")
#completion time x part B score x Gender
ggplot(dataset, aes(x=Completion.Time, y=Part.B.Score, color=Gender)) + geom_point() + facet_wrap(~ Gender) + theme_bw() + ylim(0, 100) + labs(title="Line Graph showing how completion time and part b score, split by gender", x="Completion Time", y="Part B Score")

#Outlier graphs
#count part b score
ggplot(dataset, aes(x=Part.B.Score)) + geom_histogram(binwidth = 5, color="black", fill="white")
#count age
ggplot(dataset, aes(x=Age)) + geom_histogram(binwidth = 5, color="black", fill="white")

#count completion time
ggplot(dataset, aes(x=Completion.Time)) + geom_histogram(binwidth = 5, color="black", fill="white")
#count part a score
ggplot(dataset, aes(x=Part.A.Score)) + geom_histogram(binwidth = 5, color="black", fill="white")
#count part b score
ggplot(dataset, aes(x=Part.B.Score)) + geom_histogram(binwidth = 5, color="black", fill="white")
#count part c score
ggplot(dataset, aes(x=Part.C.Score)) + geom_histogram(binwidth = 5, color="black", fill="white")
#count age
ggplot(dataset, aes(x=Age)) + geom_histogram(binwidth = 5, color="black", fill="white")

#gender x completion time
ggplot(dataset, aes(x=Gender, y=Completion.Time)) + geom_boxplot()
#gender x part A score
ggplot(dataset, aes(x=Gender, y=Part.A.Score)) + geom_boxplot()
#gender x part B score
ggplot(dataset, aes(x=Gender, y=Part.B.Score)) + geom_boxplot() + ylim(0,100)
#gender x part C score
ggplot(dataset, aes(x=Gender, y=Part.C.Score)) + geom_boxplot()


#Location x completion time
ggplot(dataset, aes(x=Location, y=Completion.Time)) + geom_boxplot()
#Location x part A score
ggplot(dataset, aes(x=Location, y=Part.A.Score)) + geom_boxplot()
#Location x part B score
ggplot(dataset, aes(x=Location, y=Part.B.Score)) + geom_boxplot() + ylim(0,100)
#Location x part C score
ggplot(dataset, aes(x=Location, y=Part.C.Score)) + geom_boxplot()


#Age Band x completion time
ggplot(dataset, aes(x=Age.Band, y=Completion.Time)) + geom_boxplot()
#Age Band x part A score
ggplot(dataset, aes(x=Age.Band, y=Part.A.Score)) + geom_boxplot()
#Age Band x part B score
ggplot(dataset, aes(x=Age.Band, y=Part.B.Score)) + geom_boxplot() + ylim(0,100)
#Age Band x part C score
ggplot(dataset, aes(x=Age.Band, y=Part.C.Score)) + geom_boxplot()


#Age x completion time
ggplot(dataset, aes(x=Age, y=Completion.Time)) + geom_point() + geom_smooth() + xlim(0,100)
#Age x part A score
ggplot(dataset, aes(x=Age, y=Part.A.Score)) + geom_point() + geom_smooth() + xlim(0,100)
#Age x part B score
ggplot(dataset, aes(x=Age, y=Part.B.Score)) + geom_point() + geom_smooth() + xlim(0,100)
#Age x part C score
ggplot(dataset, aes(x=Age, y=Part.C.Score)) + geom_point() + geom_smooth() + xlim(0,100)


#age x gender
ggplot(dataset, aes(x=Gender, y=Age)) + geom_boxplot() + ylim(0,100)
#age x location
ggplot(dataset, aes(x=Location, y=Age)) + geom_boxplot() + ylim(0,100)


#completion time x part A score
ggplot(dataset, aes(x=Completion.Time, y=Part.A.Score)) + geom_point() + geom_smooth()
#completion time x part B score
ggplot(dataset, aes(x=Completion.Time, y=Part.B.Score)) + geom_point() + geom_smooth()
#completion time x part C score
ggplot(dataset, aes(x=Completion.Time, y=Part.C.Score)) + geom_point() + geom_smooth()


#completion time x part A score x Gender
ggplot(dataset, aes(x=Completion.Time, y=Part.A.Score, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender)
#completion time x part B score x Gender
ggplot(dataset, aes(x=Completion.Time, y=Part.B.Score, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender) + ylim(0,100)
#completion time x part C score x Gender
ggplot(dataset, aes(x=Completion.Time, y=Part.C.Score, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender)


#completion time x part A score x Location
ggplot(dataset, aes(x=Completion.Time, y=Part.A.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
#completion time x part B score x Gender
ggplot(dataset, aes(x=Completion.Time, y=Part.B.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
#completion time x part C score x Gender
ggplot(dataset, aes(x=Completion.Time, y=Part.C.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)


#gender x completion time x location
ggplot(dataset, aes(x=Gender, y=Completion.Time, color=Location)) + geom_boxplot() + geom_smooth()
#gender x part A score x location
ggplot(dataset, aes(x=Gender, y=Part.A.Score, color=Location)) + geom_boxplot() + geom_smooth()
#gender x part B score x location
ggplot(dataset, aes(x=Gender, y=Part.B.Score, color=Location)) + geom_boxplot() + geom_smooth() + ylim(0,100)
#gender x part C score x location
ggplot(dataset, aes(x=Gender, y=Part.C.Score, color=Location)) + geom_boxplot() + geom_smooth()


#Age x completion time x gender 
ggplot(dataset, aes(x=Age, y=Completion.Time, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender) + xlim(0,100)
#Age x part A score x gender
ggplot(dataset, aes(x=Age, y=Part.A.Score, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender) + xlim(0,100)
#Age x part B score x gender
ggplot(dataset, aes(x=Age, y=Part.B.Score, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender) + xlim(0,100) + ylim(0,100)
#Age x part C score x gender
ggplot(dataset, aes(x=Age, y=Part.C.Score, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender) + xlim(0,100)


#Age x completion time x location
ggplot(dataset, aes(x=Age, y=Completion.Time, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
#Age x part A score x location
ggplot(dataset, aes(x=Age, y=Part.A.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
#Age x part B score x location
ggplot(dataset, aes(x=Age, y=Part.B.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
#Age x part C score x location
ggplot(dataset, aes(x=Age, y=Part.C.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
