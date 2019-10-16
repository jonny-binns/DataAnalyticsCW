library(readr)
library(ggplot2)
library(reshape2)
# osx dataset <- read_csv("Documents/GitHub/DataAnalyticsCW/dataset.csv")
dataset <- read_csv("GitHub/DataAnalyticsCW/dataset.csv")
View(dataset)
print(dataset)

#graphs that show something
#Age Band x part A score
ggplot(dataset, aes(x=Age.Band, y=Part.A.Score)) + geom_boxplot()
#Age x part B score
ggplot(dataset, aes(x=Age, y=Part.B.Score)) + geom_point() + geom_smooth()
#Age x completion time x gender 
ggplot(dataset, aes(x=Age, y=Completion.Time, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender)
#Age x part C score x location
ggplot(dataset, aes(x=Age, y=Part.C.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)


#count completion time
ggplot(dataset, aes(x=Completion.Time)) + geom_histogram(binwidth = 5, color="black", fill="white")
#count part a score
ggplot(dataset, aes(x=Part.A.Score)) + geom_histogram(binwidth = 5, color="black", fill="white")
#count part b score
ggplot(dataset, aes(x=Part.B.Score)) + geom_histogram(binwidth = 5, color="black", fill="white")
#count part c score
ggplot(dataset, aes(x=Part.C.Score)) + geom_histogram(binwidth = 5, color="black", fill="white")


#gender x completion time
ggplot(dataset, aes(x=Gender, y=Completion.Time)) + geom_boxplot()
#gender x part A score
ggplot(dataset, aes(x=Gender, y=Part.A.Score)) + geom_boxplot()
#gender x part B score
ggplot(dataset, aes(x=Gender, y=Part.B.Score)) + geom_boxplot()
#gender x part C score
ggplot(dataset, aes(x=Gender, y=Part.C.Score)) + geom_boxplot()


#Location x completion time
ggplot(dataset, aes(x=Location, y=Completion.Time)) + geom_boxplot()
#Location x part A score
ggplot(dataset, aes(x=Location, y=Part.A.Score)) + geom_boxplot()
#Location x part B score
ggplot(dataset, aes(x=Location, y=Part.B.Score)) + geom_boxplot()
#Location x part C score
ggplot(dataset, aes(x=Location, y=Part.C.Score)) + geom_boxplot()


#Age Band x completion time
ggplot(dataset, aes(x=Age.Band, y=Completion.Time)) + geom_boxplot()
#Age Band x part A score
ggplot(dataset, aes(x=Age.Band, y=Part.A.Score)) + geom_boxplot()
#Age Band x part B score
ggplot(dataset, aes(x=Age.Band, y=Part.B.Score)) + geom_boxplot()
#Age Band x part C score
ggplot(dataset, aes(x=Age.Band, y=Part.C.Score)) + geom_boxplot()


#Age x completion time
ggplot(dataset, aes(x=Age, y=Completion.Time)) + geom_point() + geom_smooth()
#Age x part A score
ggplot(dataset, aes(x=Age, y=Part.A.Score)) + geom_point() + geom_smooth()
#Age x part B score
ggplot(dataset, aes(x=Age, y=Part.B.Score)) + geom_point() + geom_smooth()
#Age x part C score
ggplot(dataset, aes(x=Age, y=Part.C.Score)) + geom_point() + geom_smooth()


#completion time x part A score
ggplot(dataset, aes(x=Completion.Time, y=Part.A.Score)) + geom_point() + geom_smooth()
#completion time x part B score
ggplot(dataset, aes(x=Completion.Time, y=Part.B.Score)) + geom_point() + geom_smooth()
#completion time x part C score
ggplot(dataset, aes(x=Completion.Time, y=Part.C.Score)) + geom_point() + geom_smooth()


#gender x completion time x location
ggplot(dataset, aes(x=Gender, y=Completion.Time, color=Location)) + geom_boxplot() + geom_smooth()
#gender x part A score x location
ggplot(dataset, aes(x=Gender, y=Part.A.Score, color=Location)) + geom_boxplot() + geom_smooth()
#gender x part B score x location
ggplot(dataset, aes(x=Gender, y=Part.B.Score, color=Location)) + geom_boxplot() + geom_smooth()
#gender x part C score x location
ggplot(dataset, aes(x=Gender, y=Part.C.Score, color=Location)) + geom_boxplot() + geom_smooth()


#Age x completion time x gender 
ggplot(dataset, aes(x=Age, y=Completion.Time, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender)
#Age x part A score x gender
ggplot(dataset, aes(x=Age, y=Part.A.Score, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender)
#Age x part B score x gender
ggplot(dataset, aes(x=Age, y=Part.B.Score, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender)
#Age x part C score x gender
ggplot(dataset, aes(x=Age, y=Part.C.Score, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender)


#Age x completion time x location
ggplot(dataset, aes(x=Age, y=Completion.Time, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
#Age x part A score x location
ggplot(dataset, aes(x=Age, y=Part.A.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
#Age x part B score x location
ggplot(dataset, aes(x=Age, y=Part.B.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
#Age x part C score x location
ggplot(dataset, aes(x=Age, y=Part.C.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
