a = "vicky"
a="sowmya"
a="sri"
############
num1=5
char1="hi"
log1=TRUE
complex=4+7i
class(log1)
----------------
#assignemt operators
b=1  
b<-1
1->b
------------------
#arithmetic operators
num1=20
num2=20
num1==num2
num1!=num2
num1+num2
num1*num2
num1/num2
-------------------
#logical operators
  
log1=TRUE
log2=FALSE
log1&log2
log2&log2
log1&log1


 log1|log2
log2|log1 
log1|log1
log2|log2



-----------------------
  #vectors
vec1<-c(1,2,3)
vec2<-c(4,5,3)
vec1==vec2
vec2!=vec1
vec1<-c("a","c","s")
vec1
class(vec1)
vec1<-c(T,F,T)
vec1
class(vec1)
class(T,F,T)
#vectors can only store value of one particular type
sri1<-c(1,T,2,F)
class(sri1)
sri1
sri2<-c(1,"a",2,"b")
class(sri2)
sri2
sri3<-c(1,"a",T)
class(sri3)
sri3

#exacting elements in vectors,that means we can get the values
sri1[3]
sri2[2]
sri3[3]

#######list
class(list)
L1<-list(1,"a",T)
L1
class(list)
L1[[2]]  
class(L1[[1]])
L2<-list(c(1,2,3),c("a","b","c"),c(T,F,T))
L2
L2[[1]][3]
L2
##########matrix
m1<-matrix(c(1,2,3,4))
m1
m1<-matrix(c(1,2,3,4),nrow=2,ncol=2)             
m1
m1<-matrix(c(1,2,3,4),nrow=2,ncol=2,byrow=T)
m1
m2<-matrix(c(1,2,3,4),nrow=2,ncol=2,byrow=F)
m2
m2[2,2]
######################array
vec1<-c(1,2,3,4,5,6)
vec2<-c(1,2,3,4,4,5)
v1<-array(c(vec1,vec1),dim=c(2,3,2))
v1
class(dim)
 v1[2,2,1]
####################factor
color1<-c("green","blue","pink")
color1
class(color1)
as.factor(color1)->color2
color2
color<-factor(c("sri","vicky","deepu"))
color
color<-factor(c("sri","vicky","deepu","sri"))
color
color1[3]
#########################data frame
mofs<-data.frame(names=c("vicky","max","guva"),
           marks=c(20,15,30))

View(mofs)
mofs
mofs[1:2]
mofs[[1]][2]
class(data.frame)
class(mofs)
mofs$names
mofs$marks

########################### Inbuilt functions
iris
View(iris)
colnames(iris)
str(iris)
class(str)
head(iris)
head(iris,15)
tail(iris)
tail(iris,5)
table(iris$Species)
min(iris$Sepal.Length)
max(iris$Sepal.Length)
mode(iris$Sepal.Length)
range(iris$Sepal.Length)
mean(iris$Sepal.Length)
?iris->s
s
####################### if
if(iris$Sepal.Length[19]>4){
  print("sepal Length is greater than 4")
}
#if here 1is less than four and it is flase in that time we don't get any reply
#same method just use less than symbol insted of the greater than
-------------------------------------
###################### if else
if(iris$Sepal.Length[1]<4){
   print("sepal Length is less than 4")
 }else{
   print("sepal Length is greater than 4")
 }
#######################################################################################
######################    converting character to nurmeric
char1<-c("z","x","f")
as.numeric(char1)
char1
as.factor(char1)
as.numeric(char1)
########################## for loop
vec1<-1:9
vec1
for(i in vec1){
  print(i+5)
}
#################################while loop
i=1
while(i<10){
  print(i+5)
i=i+1
}
###############user define function
f<-function(x){
  print(x+5)
}
f(10)
f(25)
################graphs 
View(Diamonds)
ncol(diamonds)
nrow(diamonds)
?diamonds
################ histogram (it is to understand the continous variable value )
ggplot(data=iris,aes(x=Sepal.Length)) + geom_histogram()
ggplot(data=iris,aes(x=Sepal.Length)) +geom_histogram(fill="blue",col="green")
##################################barplot(it is used to understand characterstic of data)
ggplot(data=iris,aes(x=cut)) +geom_bar()
ggplot(data=diamonds,aes(x=cut))+geom_bar(fill="red",col="black")
ggplot(data=iris,aes(x=cut,fill=cut))+geom_bar()
########################################## scatter plot
ggplot(data=diamonds,aes(y=price,x=carat,col=cut))+geom_point()
##########################box plot
ggplot(data=diamonds,aes(x=clarity,y=carat))+geom_boxplot()
ggplot(data=diamonds,aes(x=clarity,y=carat,fill=clarity))+geom_boxplot()
ggplot(data=diamonds,aes(x=clarity,y=carat,fill=cut))+geom_boxplot()
ggplot(data=diamonds,aes(x=clarity,y=carat,fill=cut))+geom_boxplot()+facet_grid(~cut)+
  theme(plot.background=element_rect(fill="palegreen"))
########################################### data munuplication
View(laptops)
View(diamonds)
diamonds%>%select(1,2)->diamonds1_2
diamonds1_2
diamonds%>%select(1:5)->diamonds1_5
diamonds1_5
diamonds%.%select("cut","color","carat")->diamonds_cpp
diamonds%.% select(starts_with("c"))->diamonds
diamonds%.% select(ends_with("s"))->diamonds
