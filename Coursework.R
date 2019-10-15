library(readr)
library(ggplot2)
library(reshape2)
dataset <- read_csv("Documents/GitHub/DataAnalyticsCW/dataset.csv")
View(dataset)
print(dataset)
#2x easy 1d 3x 2d

#gg1 age x completion time x gender 
#shows something
ggplot(dataset, aes(x=Age, y=Completion.Time, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender)

#gg2 age x part A/B/C score x location 
ggplot(dataset, aes(x=Age, y=Part.A.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
ggplot(dataset, aes(x=Age, y=Part.B.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
#shows something
ggplot(dataset, aes(x=Age, y=Part.C.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)

#gg3 age x part A/B/C score x gender
ggplot(dataset, aes(x=Age, y=Part.A.Score, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender)
ggplot(dataset, aes(x=Age, y=Part.B.Score, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender)
ggplot(dataset, aes(x=Age, y=Part.C.Score, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender)

#gg4 age band x completion time x location
#Shows something
ggplot(dataset, aes(x=Age.Band, y=Completion.Time, color=Location)) + geom_boxplot()

#gg5 completion time x part A/B/C score x gender
ggplot(dataset, aes(x=Completion.Time, y=Part.A.Score, color=Gender)) + geom_point()
#shows something
ggplot(dataset, aes(x=Completion.Time, y=Part.B.Score, color=Gender)) + geom_point()
ggplot(dataset, aes(x=Completion.Time, y=Part.C.Score, color=Gender)) + geom_point()

#gg6 completion time x part A/B/C score x location
ggplot(dataset, aes(x=Completion.Time, y=Part.A.Score, color=Location)) + geom_point() + facet_wrap(~ Location)
ggplot(dataset, aes(x=Completion.Time, y=Part.B.Score, color=Location)) + geom_point() + facet_wrap(~ Location)
ggplot(dataset, aes(x=Completion.Time, y=Part.A.Score, color=Location)) + geom_point() + facet_wrap(~ Location)

#gg7 gender x completion time
#shows something
ggplot(dataset, aes(x=Gender, y=Completion.Time)) + geom_boxplot()

#Graphs to use
ggplot(dataset, aes(x=Gender, y=Completion.Time)) + geom_boxplot()
ggplot(dataset, aes(x=Completion.Time, y=Part.B.Score, color=Gender)) + geom_point()
ggplot(dataset, aes(x=Age.Band, y=Completion.Time)) + geom_boxplot()
ggplot(dataset, aes(x=Age, y=Part.C.Score, color=Location)) + geom_point() + geom_smooth() + facet_wrap(~ Location)
ggplot(dataset, aes(x=Age, y=Completion.Time, color=Gender)) + geom_point() + geom_smooth() + facet_wrap(~ Gender)

