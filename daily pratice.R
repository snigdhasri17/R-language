################ air quality

View(airquality)
nrow(airquality)
median(airquality$Ozone,na.rm=TRUE)
var(airquality$Ozone,na.rm=TRUE)
sd(airquality$Ozone,na.rm=TRUE)
#################mtcars

sd(mtcars$mpg)
cv(mtcars$mpg)
class(mtcars)
mean(mtcars$mpg)
nrow(mtcars)
ncol(mtcars)

################## functions
y<-function(x){
  print(x+2)
}
y(10)
----------------------
  triple<-function(x){
    y<-3+x
    return(y)
  }
triple(6)
x<-function(s){
  print(s+5)
}
x(10)  

###################### for loops

cities<-c("new york","paries","london","tokyo")
num_chars<-c()
for(i in 1:length(cities)){
  num_chars[i]<-nchar(cities[i])
}
num_chars
--------------------------------
  names<-c("sri","vicky","arjun")
num_chars<-c()
for(i in 1:length(names)){
  num_chars[i]<-nchar(names[i])
}
num_chars
names[2]
-----------
for(x in 1:5){
    print(x)
  }
---------------------
  mat1<-1:9
mat1
for(x in mat1){
  print(x+2)
}
----------------
  for(month in 1:5){
    print(paste('Month:',month))
  }
-----------------------
  for(names in 1:6){
    print(paste('names',names))
  }
-----------------------------
  for(month in 1:5){
    if(month<3){
      print(paste('winte month',month))
    }else{
      print(paste('spring month',month))
    }
  } 
---------------------------
  vect1<-c(2,3,4,5,6)
sri<-numeric()
for(num in vect1){
  sri<-c(sri,num*5)
}
sri
----------------------------
  for(var in 1:8){
    print(var)
  }  
##################################### while loop
y=4
while(y<10){
  print(y)
  y=y+1
}
################################## Repeat loop
var=4
repeat
{
  print(var)
  var=var+1
  if(var>7){
    break
  }
}

##################### matrix
s1<-matrix(c(2:3,3:5,5:8))
s1
my.matrix<-matrix(c(1:10,11:20,21:30),nrow=10,ncol=3,byrow=TRUE)
my.matrix
colSums(my.matrix)
class(col)
my.matrix[[2]]
###################################### 09-01-23
x<-c(1,2,3,4,5,6,7)
y<-c("a","b","c","d","e")
y
x
x;y
x[1]
x[3]
y[5]
--------------------
  a<-matrix(1:6,2,3)
a
a[[2]][1]
a[1]
a[3]
a[7]

###################### if condition
x<-101
if(x > 100)
{
  print("x is big")
}
----------------------
  x<-5
if(x>0){
  print("positive number")
}
team_A <- 1 # Number of goals scored by Team A
team_B <- 3 # Number of goals scored by Team B
if (team_A < team_B){ 
  print ("Team A wins")
}

######################### if else condition
x<-101
y<-201
if(x>y){
  print("x is big")
}else{
  print("y is big")
}
############################ list
k<-list(23,4,56)
k
class(k)
k[1]  
names(k)<-c('kashika','satya','lallu')
k

############################
str(carseats)
is.na(carseats)
correlate(carsets)
################################ '30-1-23'
ctr<-1
while(ctr<=7){
  print(paste("ctr is set to",ctr))
  ctr<-ctr+1
}
-------------------
  View(airquality)
airquality$Month
as.factor(airquality$Month)
-----------------------
  library (gapminder)
library(dplyr)
gapminder%>%
  group_by(continent)%>%
  summarize(meanlineExp=mean(lifeExp),
            medianlifeEXP=median(lifeExp))
----------------------
  View(diamonds)
diamonds
ggplot(diamonds,aes(x=carat))
ggplot(diamonds, aes(x=carat,y=price))
ggplot(diamonds,aes(x=carat,colour=cut))
ggplot(data=diamonds,aes(x=color))+geom_bar()
ggplot(diamonds,aes(color,fill=color),xlab("color"))+geom_bar()
colour<-c("blue",'pink','yellow','green','black','orange','palegreen')
ggplot(data=diamonds,aes(x=color))+geom_bar(fill=colour)
###############################################
#which cricket team has won by minimum wickets?
#use the right graph to show the team which has won max matches.
#use the right graph for the season with most matches.
#which team has won by max wickets.
#how many matches and seasons do we have in the data set?
##########################################
legend('topleft',Legend = c('line 1','line2'),
       col=c('red','blue'),lty=1:2,cex=0.8)

########################################################## customer_churn
customer_churn<-read.csv(file.choose(),header = T)
x
library(dplyr)
##############select()
customer_churn%>%select(head(1:5))->df
df
head(x,10)
summary(x)
##########################filter
x%>%select(1:5)%>%filter(gender=="Female")->d
d
View(d)
cat("\n name of the variables:",names(customer_churn))
class(cat)
#################################ARRANGE
dy<-data.frame(ID=c(43,54,65),names=c("o","p","i"),grades=c("a",'p',"s"))
dy
arrange(dy,names)

###################################cricket
cricket<-read.csv(file.choose(),header = T)
View(cricket)
cat("\t name of the variables: ",",",names(cricket))
min(cricket$ball)
summary(cricket$over)
dim(cricket)
class(dim)
nrow(cricket)
ncol(cricket)
#########################GEOM_HIST,AREA using cricket.
ggplot(data=cricket,aes(x=over))+geom_histogram(fill="pink1",col="green4",binwidth = 2)
ggplot(data=cricket,aes(x=ball,y=over))+geom_area(col="palegreen2")
##########################LINE PLOT USING CRICKET.
x<-cricket$match_id
y<-cricket$inning
plot(x,y,type = "l")
plot(x,y,type = "b",col="pink3")
plot(x,y,type = "s",col="pink4")
################################ PRATICAL NO-12

###################### uniformdistribution
runif(3)
runif(4,min = 2,max=4)
#################### ronmal distribution
rnorm(3)
rnorm(4,mean = 3,sd=6)
rnorm(4,mean = 0,sd=1)
########## sample()
sample(1:11)
sample(1:12,5)
sample(0:10,replace = FALSE)
sample(0:15,replace = TRUE)
d<-sample(LETTERS,5)
d
##############set.seed()
set.seed(234)
f<-sample(LETTERS,7)
f
############################ 17-02-2023
l<-c(32,34,56,78)
boxplot(l,main="birth rates in india",
        ylab="no of  births", border = "red",horizontal = TRUE)
##########################
require(graphics)

pie(rep(1, 12), col = gray.colors(12))
---------------------------------
expenditure <- c(600, 300, 150, 100, 200)
result <- pie(expenditure,
              main = "Monthly Expenditure Breakdown",
              labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
              col = expenditure)
print(result)
########################### 21-2-23
View(iris)
# add na values
iris
library(missForest)
iris <- prodNA(iris, noNA = 0.1)
iris
iris->I

I
#inserting na values
I[I == 0.2] <- NA
I
#replace na with mean
I$Petal.Width[is.na(I$Petal.Width)]<-mean(I$Petal.Width,na.rm=TRUE)
I
#############
View(iris)
heatmap(iris)
#########################23-2-23
#data frame
df<-data.frame(rows=c(1,2,3,4),col=c("a","b","c","d"))
df
################ boxplot # increasing the size.
rnorm(50)->x
par(cex.main=3.5)
boxplot(x,main="boxplot")
############### scatter plot ## changing the style of font.
 1:10->x

 x + rnorm(10)->y
 
plot(x,y,main="Basic R plot",cex=2,cex.main=3,font.main=3)## increasing the size of plots use "cex"

############
coin_sides<-c("head","tail")
sample(coin_sides,size = 5,replace=TRUE)
##################
df<-data.frame(col1=c(1:3,NA),
               col2=c("this",NA,"is","text"),
               col3=c(TRUE,FALSE,TRUE,TRUE),
               col4=c(2.5,4.2,3.2,NA),
               stringsAsFactors = TRUE)
df               
mean(df$col4,na.rm=TRUE)
#################################################data frame
# creating company dataframe
comp.data <- data.frame(
  
  # company ids
  # data members
  comp_id = c (1:3),
  
  # company names
  comp_name = c("Geeks", "For", "Geeks"),
  growth = c(16000, 14000, 12000),
  
  # company start dates
  # data members
  comp_start_date = as.Date(c("02/05/10", "04/04/10", "05/03/10"))
)
print(comp.data)


###########################data frame 2
A<-data.frame(letter=LETTERS[8:12],index=1:5)
A



######################################################data.frame,col
data <- data.frame(col = c(1:4, 99999, 1, NA, 1, 1, NA),   # Create example data frame
                   col1 = c(1:5, 1, "NA", 1, 1, "NA"),
                   col2 = c(letters[c(1:3)], "x  x",  "x", "   y    y y", "x", "a", "a", NA),
                   col3 = "",
                   col4 = NA)
data
colnames(data)
colnames(data)<-paste0("col",1:ncol(data))
data

data[data == ""]
data
data[data == ""] <-NA
data$col2
data
data$col2[data$col2 = "NA"]<-NA
data
---------------------------
  data<-data.frame(names=c("ak","as","as"),
                   marks=c(23,43,54),id=c(2001,2003,2002))
data
data$names=c("sd")
data
#############################
male<-c(34,56,78,22,34,12,52,67)
female<-c(56,78,44,98,34,56,88,22)
score<-c(3,5,7,8,NA,NA,7,NA)
data.frame(male,female,score)->df
df
rename(df,"finals"=score)
scale(df)
class(scale)
########################################
## sample data
set.seed(1)
mydf <- data.frame(
  ahe = sample(100, 1000, TRUE),
  age = sample(18:60, 1000, TRUE),
  female = sample(c(0, 1), 1000, TRUE)
)

## Convert the female column to a factor
## Not necessary, but makes the output nicer
mydf$female <- factor(mydf$female, c(0, 1), c("male", "female"))

## Load the lattice package
library(lattice)

## Side by side
xyplot(ahe ~ age | female, data = mydf)
##all in one, with key
xyplot(ahe~age,groups = female,data=mydf,auto,key=TRUE)# we can  use false also.

###########sapply
data<-data.frame(x=c(2,3,4,5),y=c(2,3,4,5))
View(data)
sapply(data,min)
lapply(data,min)
################## VECTORS
vector1<-c(2,3)
vector2<-c(2,3)
vector1+vector2
vector1*vector2
vector1-vector2
vector1/vector2
v<-sort(vector1)
v
g<-sort(vector1,decreasing=TRUE)
g
################ matrix
my_matrix1<-matrix(c(9:27),nrow=3,ncol=3,byrow=TRUE)
my_matrix1
my_matrix2<-matrix(c(12:20),nrow=3,ncol=3)
my_matrix2

str(apply)
apply(my_matrix1,1,sum)
apply(my_matrix1,2,prod)

#####################
s1<-matrix(c(2:3,3:5,5:8))
s1
my.matrix<-matrix(c(1:10,11:20,21:30),nrow=10,ncol=3,byrow=TRUE)
my.matrix
colSums(my.matrix)
class(col)
rowSums(my.matrix)
######################################matrix apply loops
s<-matrix(1:22,2,11)
s
mean(s)
median(s)
apply(s,1,sum)
#############################apply
str(apply)
d<-matrix(1:9,3,3)
d
apply(d,mean)
apply(d,2,sum)
########################################lapply
d<-list(10:20)
d
lapply(d,mode)
lapply(d,max)
str(lapply)
----------------------
  x<-list(25:39)
x
lapply(x,mean)
sapply(x,mean)
mean(x)
############################sapply
str(sapply)
c<-list(5:8)
c
lapply(x,mean)
sapply(c,mean)
sapply(c,mean,simplify = TRUE,USE.NAMES = TRUE)
#################
