student<-read.csv("Student.csv",stringsAsFactors = FALSE)
View(student)
str(student)

student$Gender<- as.factor(student$Gender)
student$Age<-as.factor(student$Age)
student$course<-as.factor(student$course)
student$year<-as.factor(student$year)
student$CGPA<-as.factor(student$CGPA)
student$Marital_status<-as.factor(student$Marital_status)
student$Depression<-as.factor(student$Depression)
student$Anxiety<-as.factor(student$Anxiety)
student$Panic.attack<-as.factor(student$Panic.attack)
student$treatment<-as.factor(student$treatment)

str(student)

prop.table(table(student$course)) 

library(ggplot2)

ggplot(student, aes(x =Depression)) + theme_update() +
  geom_bar() +labs(y = "count of students", title = " Depressed Student Count")

ggplot(student, aes(x = Gender, fill = Depression)) + theme_linedraw() +
  geom_bar() +
  labs(y = "count of students",
       title = "Depressed Student Count by Gender")

ggplot(student, aes(x =year, fill = Depression)) + theme_light() +
  geom_bar() +
  labs(y = "student Count",
       title = "Depressed Student Count by year")

ggplot(student, aes(x = trainability, fill = energy)) + theme_light() +
  facet_grid(~barking) + geom_bar() +
  labs(y = "student count",
       title = "Life Expectancy of student by thier energy and trainability")
