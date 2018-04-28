#annu prac matrices
set.seed100 
a = rnorm(100, 70 , 10)
a = floor(runif(10,20,100))
a
?rnorm
?runif

mean(a)
sd(a)

hist(a)
hist(a , breaks=10, col=1:8, xlab= 'anuu', ylab= 'bhatt', xlim= c(1,200), ylim=c(1,200) , main='annu' )
?xlim
lines(density(a),col= 'blue', lty= 2, lwd = 4)
lines

length(0:23)
c = matrix(0:23, 4,3,byrow= FALSE)
c

v = matrix(0:63 , 8,8, byrow = FALSE)

v
v[2]
v[2,5]



