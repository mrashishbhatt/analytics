



(rollno=1:3)
(sname=c('S1','S2','S3'))
(sname=c(paste('S', 1:3,sep='')))
df=data.frame(rollno,sname)
df
#str,dim,class,summary
str(df)
#filter
df$rollno
df$sname


(rollno=1:50)
(rollno=c(paste('R', 1:50, sep="-")))
(name=paste0('STUDENT', 1:50,'- ', 'xyz'))
(gender=sample(c('M','F'), size=50, replace=T, prob=c(.5,.5)))
(course=sample(c('BTECH','MTECH','PHD'), size=50, replace=T, prob=c(.4,.3,.3)))
table(course)
barplot(table(course))
pie(table(course))
(married=sample(c('TRUE','FALSE'), size=50, replace=T, prob=c(.7,.3)))
(marks=floor(rnorm(50,45,5)))
boxplot(marks)
hist(marks, freq=F, main='PUMBA STUDENTS BEAK UP', col='green', xlab='marks of students', ylab='density of marks')
lines(density(marks), col='blue', lty=5, lwd=2)
(age=floor(runif(50,20,45)))  
df=data.frame(rollno,name,gender,age,course,marks,married)
df


df[,c(1,2)]

#export to csv
?write.csv

write.csv(df,'./data/PUMBA.csv',row.names= F)


#?paste0
