
######################## BAR PLOTS
x<-c(39,48,52,67,70)
barplot(x,xlab="number of students",
        ylab="weight of the students",col="green",border="white",
        main="weight of the students in the class room",names.arg=c("A","B","C","D","E"))
--------------------------------------------
c<-c(23,67,54,87)
barplot(c,main="anti",xlab="A",ylab="B",
        names.arg =c ("a","v","g","h"),col=c,space=1,border = "black")
------------------------


###################################### HISTOGRAM
str(hist)
B<-c(21,43,56,32,45)
hist(B,col="orange",border="white",xlab="no.of students",ylab="marks of students",
     main="marks of data science students")
-------------------------------------------------
  v<-c(1,2,3,4)
hist(v,xlab="weight",col=v)
-----------------------------------
x<-c(4,5,6,7)
hist(x,xlab="weight",col=x)
--------------------------
s<-c(21,34,54,65)
hist(s,main="histogram",xlab="values",
     ylab="no.of",col=s,density=50,border="black")
--------------------------
  CRICKET <- read.csv(file.choose(), header=T)
View(CRICKET)

hist(CRICKET$ball)


############################## own
library(ggplot2)
years<-c(1997,1998,1994,1887)
alive<-c(200,300,400,500)
death<-c(100,150,50,125)
barplot(years,alive,death,
        col="orange",
          main="how many numbers are survived")
#################################line graph
s<-c(8,7,6,5)
plot(s,type="l",main="LINE CHART",col="green")
View(warnings)
############################### bar graph
v<-c(4,5,8,7,6)
barplot(v,col=v)
--------------
  g<-c(34,78,89)
barplot(g,col=g,bor="pale green")
################################## scatter plot
x<-c(3,5,6,8)
plot(x)
------------------
  d<-c(5,8,99)
plot(d,col=d)
-----------------------
s<-c(2,4,5,7)
plot(s,main="SCATTER PLOT",xlab="NUMB",ylab="NAMES",col=s)
####################################### density plot
s<-c(3,5,6,8)
plot(density(s),col=s)
------------
x<-c(32,34,56)
plot(density(x))
#################################### box plot
x<-c(3,5,6,8)
boxplot(x,col=x)
-----------------
input<-c(32,87,09)
boxplot(input)
-------------
#######################################pie chart
s<-c(3:6)
s
pie(s)
------------------
x<-c(45,5,6)
pie(x)
pie
----------------
  s<-c(3,5,6,8)
pie(s)
--------------------
  x<-c(21,62,10,53)
labels<-c('london','new york','singapore','mumbai')
piepercent<-round(100*x/sum(x),1)
---------------------
  pie(gapminder$lifeExp)
############################# own
View(iris)
library(ggplot2)
s<-iris
hist(s,xlab=sepal.Length,col="green")
-------------
class(cars) 
c(1,3,12,7,5)<-cars
plot(cars)  
---------------
cars<-c(1,3,12,7,5)
plot(cars,type="o",col="blue")
-----------------------
a<-c(2,4,6,8)
hist(a)
#######################
View(diamonds)
mean(diamonds$x)
sd(diamonds$depth)
############################################
View(women)
nrow(women)
ncol(women)
###################################################### geom_graphs
library(ggplot2)
###############################################geom_hist

ggplot(data=diamonds,aes(x=price))+geom_histogram(fill='green',col='red',bins=30)
---------------------------------------
ggplot(data=diamonds,aes(x=carat),col='green',fill='blue','red')+geom_histogram()
-----------------------------------
  ggplot(data=diamonds,aes(x=price))+geom_histogram(fill="pink",col="red")

########## ##########################3geom_bar

ggplot(data=diamonds,aes(x=cut))+geom_bar(fill='palegreen')
--------------------------------------------------------
ggplot(data=diamonds,aes(x=price))+geom_bar(fill='palegreen')
-------------------------------------
  ggplot(data=diamonds,aes(x=cut))+geom_bar(fill="palegreen4")
########################### geom_count

ggplot(data=diamonds,aes(y=price,x=carat,colour=factor(cut),
                         shape='square'))+geom_count()
----------------------------
  library(ggplot2)
ggplot(data = mpg,aes(y=hwy,x=displ, colour = factor(cyl),
                      shape="square")) + geom_count()



###################################geom_point

ggplot(data=diamonds,aes(x=price,y=carat))+geom_point(col="cut")

  ggplot(data=diamonds,aes(x=price,y=carat))+geom_point(col="cut")

################################33geom_area

ggplot(data=diamonds,aes(x=price,y=carat))+geom_area(col=cut)
----------------------
  ggplot(data=diamonds,aes(x=carat,y=price,color=cut))+geom_area()

#########################################3 geom_line

ggplot(data=diamonds,aes(x=price,y=carat,col=cut))+geom_line()

##############################################

################### line plot(# four types of line graphs l,s,b,o)
x<-c(2,3,4,5,6)
y<-c(200,300,400,500,600)
plot(x,y,type="l")
plot(x,y,type="s")
plot(x,y,type="b")
plot(x,y,type="o",col="palegreen4",lwd=2)     

######################################scatter plot
x<-c(2,4,3,5,6)
y<-c(20,30,40,50,60)
plot(x,y,pch=12,col=x)
######################################## smothing curves

df<-data.frame(x=c(20,23,4,50,6),y=c(4,6,7,8,2))
plot(df$x,df$y)
lines(lowess(df$x,df$y),col=x,lwd=1)
lines(lowess(df$x,df$y,f=0.3),col=x,lwd=2)
lines(lowess(df$x,df$y,f=3),col=x,lwd=1)

##############################bar plot
library(plotly)
c<-c(12,13,14)
group<-LETTERS[1:3]
plot_ly(x=group,y=v)

##############################bar plot
tail(iris)
barplot(iris$Sepal.Length,main="barplot"
        ,xlab="Species",col="green",border="palegreen4")

############################### PRATICAL PRATICE

library(ggplot2)
##geom_point()
ggplot(data = mpg,aes(y=hwy,x=displ, colour = factor(cyl),
                      shape="square")) + geom_count()
###################################### PRATICAL-7

View(diamonds)
###geom_histogram()
ggplot(data=diamonds, aes(x=price)) + geom_histogram(fill="pink",col="red")

###geom_area()
ggplot(data=diamonds, aes(x=carat,y=price, colour=cut)) + geom_area()

###geom_bar()
ggplot(data=diamonds, aes(x=cut)) + geom_bar(fill="palegreen4")

###geom_point()
ggplot(data=diamonds, aes(x=price, y=carat, col=cut)) + geom_point()

###geom_line()
ggplot(data=diamonds, aes(x=price, y=carat, col=cut)) + geom_line()

###################### PRATICAL NO-9

x<-c(4,3,2,3,6,3)
hist((x),col="skyblue",density=10,border = "pink")
############3

x<-c(4,3,2,3,6,3)
plot(density(x))

barplot((x),col="yellow",border = "red",density=20)
######################### PRATICAL NO-10

###########################
a<-c(4,5,6,7)
b<-c(8,9,10,11)
plot(a,b,type="l",col="green")
###################
a<-c(2,8,4,3)
b<-c(9,5,7,2)
plot(a,b,col="pink")
#####################
x<-1:10
y<-c(2,4,6,8,10,12,14,16,18,20)
lo<-loess(y~x)
plot(x,y)
lines(predict(10),lwd=2)
#############
a<-c(3,5,2,8)
b<-c(5,8,2,7)
barplot(a,b,density=20,col="blue",border="pink")

################################# 3d graphs
# To illustrate simple right circular cone
cone <- function(x, y){
  sqrt(x ^ 2 + y ^ 2)
}

# prepare variables.
x <- y <- seq(-1, 1, length = 30)
z <- outer(x, y, cone)

# plot the 3D surface
persp(x, y, z)
#############################
# Visualizing 3-D numeric data with Scatter Plots
# length, breadth and depth
fig = plt.figure(figsize=(c(8, 6)))
ax = fig.add_subplot(111, projection='3d')

xs = wines['residual sugar']
ys = wines['fixed acidity']
zs = wines['alcohol']
ax.scatter(xs, ys, zs, s=50, alpha=0.6, edgecolors='w')

ax.set_xlabel('Residual Sugar')
ax.set_ylabel('Fixed Acidity')
ax.set_zlabel('Alcohol')
############################# pie charts-step by step process
# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Give the chart file a name.
png(file = "city.png")# png-portable network graphics

# Plot the chart.
pie(x,labels)

# Save the file.
dev.off()
class(dev.off)
######### 
# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Give the chart file a name.
png(file = "city_title_colours.jpg")

# Plot the chart with title and rainbow color pallet.
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))

# Save the file.
dev.off()
################################# PIE CHART
require(graphics)
pairs(mtcars, main = "mtcars data", gap = 1/4)
########################## 
############################## own
library(ggplot2)
years<-c(1997,1998,1994,1887)
alive<-c(200,300,400,500)
death<-c(100,150,50,125)
boxplot(years,alive,death,
        fill=years,col=alive,
        main="how many numbers are survived")

######################stacked bar plots
VADeaths
barplot(VADeaths,
        col = c("lightblue","mistyrose","lightcyan","lavender"),
        legend = rownames(VADeaths))

################
require(stats); require(graphics)
pairs(swiss, panel = panel.smooth, main = "swiss data",
      col = 3 + (swiss$Catholic > 50))
summary(lm(Fertility ~ . , data = swiss))
############
require(graphics)
pairs(sleep
      ,main="pie chart",cax.main=12,font.main=25,col=2)
#############
