# R Programming

# Data Structures


set.seed(100)
v1=rnorm(100, mean=70, sd=14)
v1
mean(v1)

sd(v1)


hist(v1)
hist(v1, breaks=5, col=1:8)
hist(v1, freq=F, col='yellow', main='', xlab='baby marks', ylab='density of pappi', xlim=c(0, 120), ylim=c(0,0.10))

lines(density(v1), col='blue', lty=2, lwd=10)
?lines


#title(main='savitribai phule pune vidyapeeth', sub='PUMBA')

# Matrix----


?matrix
length(100:123)
m1=matrix(100:123,ncol=4, byrow= T)
m1
m1[3,4]
m1[3,]
m1[,4]
m1[1:3,2:3]
m1[c(1,3),c(2,4)] #1 and 3 row, 2 and 4 coloumn
colSums(m1)
rowSums(m1)
colMeans(m1)
rowMeans(m1)



# Array----

length(100:123)
4*3*2
a1=array(100:123, dim=c(4,3,2))  #row, coloumn, matrices
a1
(loc=paste('loc', 1:4, sep='-'))
(product=paste('p', 1:3, sep='$'))
(coy=paste('c', 1:2, sep="*"))
(dimnames(a1)=list(loc, product, coy))
a1
apply(a1, c(1,2), sum)
apply(a1, c(2,3), sum)
apply(a1, 3, sum)
sum(a1)



# Data Frame----

(rollno=1:30)
(sname=paste('student', 1:30, sep=""))
(gender=sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))

(marks=floor(runif(30,50,100)))
(marks=floor(rnorm(30,50,10)))


(marks2=ceiling(rnorm(30,40,5)))


df1=data.frame(rollno,sname,gender,marks)
df1
head(df1)

head(df1, n=3)
tail(df1)

tail(df1, n=3)  #n=3 or 3 does'nt matter




str(df1)
class(df1)
summary(df1)
df1
df1$gender
df1$sname
df1$marks
df1[,c(2,4)]
df1[1:10,]
df1[marks>50 & gender=='F',c('rollno','sname')]
df1[marks>50 & gender=='F', c(1,2)]
df1
names(df1)  #names
dim(df1)      #dimemsions
aggregate(df1$marks, by=list(df1$gender), FUN=max)
df2=aggregate(marks~gender, data=df1, FUN=max)
pie(x=df2$marks)

barplot(df2$marks, col=1:2)







#using dplyr package
library(dpylr)
#?aggregate





#?head





# List----

# Factors----

(grades=sample(c('A','B','C','D'), size=30, replace=T, prob=c(.3,.2,.4,.1)))
table(grades)
class(grades)
gradesF = factor(grades)
grades
gradesF
gradesF1=factor(grades, ordered=T)
gradesF1
gradesF2=factor(grades, ordered=T, levels=c('D','C','B','A'))
gradesF2
