df=read.csv('./data/denco.csv.csv')
df
summary(df)
str(df)
class(df)

sales=read.csv(file.choose())  #import and assign command

str(sales)
(denco=sales)  #how to keep a backup here #whichever data you read store in sales object

head(sales)  #top 6 rows
tail(sales)   #bottom 6 rows
str(sales)   #sructure definition
summary(sales)
class(sales)
dim(sales) #how many rows and coloumns
names(sales) #cateogory names

unique(sales$custname)
length(unique(sales$custname))
length(unique(sales$region))



#sales2=read.csv(file.choose()


names(sales)
library(dplyr)
names(sales)
sales %>% group_by(custname) %>% summarize(revenue=sum(revenue)) %>% arrange(desc(revenue)) %>% head(n=3)

# we have to pipe the next commands in the main one or else make a new data frame with value till where you want to analyse it. 

#triumph inulation gave us the highest revenue

# %>% used for piping the immidiate outputs to next ones


sales %>% count(custname, sort=TRUE) %>% head(n=10)

#or second method

sales %>% group_by(custname) %>% summarise(n=n()) %>% arrange(desc(n)) %>% head(n=5)



#summarise by part number


sales %>% group_by(partnum) %>% summarise(n=n()) %>% arrange(desc(n)) %>% head(n=5)

#or second method

sales %>% count(partnum, sort=TRUE) %>% head(n=5)


#which parts have hishest profits : partno sum(profits)


sales %>% group_by(partnum) %>% summarise(totalmargin=sum(margin)) %>% arrange(desc(totalmargin)) %>% head(n=5)


#which region has the highest profits

sales %>% group_by(region) %>% summarise(revenue=sum(revenue)) %>% arrange(desc(revenue)) %>% head(n=5)

df3=sales %>% group_by(region) %>% summarise(revenue=sum(revenue)) %>% arrange(desc(revenue)) %>% head(n=5)
df3
barplot(df3$revenue)
pie(df3$revenue, col=1:5)
barplot(sales)


#filter is used for filtering the data in R

sales %>% filter(revenue<=12509) %>% head(n=5)

#select command to specifically identify or select a data

sales %>% filter(revenue>=7911062) %>% select(custname,revenue)

sales %>% sample_frac(0.01)
sales %>% sample_n(5)

#sample used for random selection

sample_n(sales,10)

#write and export in excel to analyse is the command as follows.

write.csv(df3,'./data/highest profitable regions.csv') 
