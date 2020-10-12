#Vector Creation
#Collection of homogeneous values
sales = c(200,250,247,229)
sales

#class of vector
class(sales)

#length of sales
length(sales)

#accessing vector elements
#sub-setting a vector
sales[2]
sales[-2]
sales[c(1,3)]
sales[-c(1,3)]
sales[2:4]

#Sort the vector
sales
sort(sales)
sort(sales,decreasing = TRUE)

#Append an element
sales = c(500, sales)
sales
sales = c(sales, 150)
sales

#if we don't assign it back to sales the values in sales will not be affected
c(sales,460)
sales

sales = c(sales,"Rahul")
sales
class(sales)

#Removing elements
sales = sales[-7]
sales
class(sales)


sales = as.numeric(sales)
class(sales)

getwd()
setwd("G:/study/SIMS R Programming")

#vector deletion
test = 100
rm(test)
test

#listing
a = 10
b = 1:3
c = 'Rahul'

ls()
rm(list = ls())

#vector manipulation
vec1 = 1:5
vec2 = 10
vec3 = 10:11

vec1 + vec2
vec1 + vec3

##__________________________________________________
##MATRIX
#matrix creation using vector
id = 1:10
class(id)

dim(id) = c(2,5)
id
class(id)

#matrix creation using rbind()/cbind()
a = 1:3
b = 11:13
mat1 = rbind(a,b)
mat1
mat2 = cbind(a,b)
mat2
c = 1:2
mat3 = rbind(a,c)
mat3

#matrix creation using matrix()
mat4 = matrix(1:6,3)
mat4
mat4 = matrix(1:6,3,byrow = TRUE)
mat4

#matrix creation using vector as a parameter
a = 1:10
mat5 = matrix(a,5,byrow = TRUE)
mat5

#assigning row and column names
m1 = matrix(1:6,3)
m1
rownames(m1) = c('r1','r2','r3')
colnames(m1) = c('c1','c2')
m1

#sub-setting a matrix(accessing values)
m1[2,2]
m1['r1',2]
m1['r3','c2']
m1[,2,drop=FALSE]
m1[1,]

m1[c(1,3),]

#adding a row/column
r4 = c(11,12)
m1 = rbind(m1,r4)
m1

c3 = 21:24
m1 = cbind(m1,c3)
m1

#removing a row/column
m1 = m1[ ,-c(c3)]
m1

#matrix deletion
rm(m1)

m1
m1 = matrix(1:9,3)
m1

#adding a row/column in between
rbind(m1[1,],101:103,m1[-1,])
rbind(m1[1:2,],101:103,m1[-(1:2),])

#matrix manipulation
mm1 = matrix(1:9,3)
mm2 = matrix(10:18,3)
mm1
mm2
dim(mm1)

#addition of matrices
mm1 + mm2

mm3 = matrix(1:4,2)
mm3
mm1 + mm3

#transpose of a matrix
t(mm1)

#determinant of a matrix
det(mm1)
solve(mm1)

#inverse of a matrix(det should not be zero)
solve(mm3)
det(mm3)

mm1
mm2

#matrix multiplication
mm1 * mm2 #element wise multiplication
mm1 %*% mm2 #exact mathematical multiplication

##_____________________________________________________
##Coercion
#Implicit Coercion
sal3 = c(1,2,3)
sal3
class(sal3)

sal1
sal1 = c(1000,2000,30000,'error')
class(sal1) #implicit coercion

sal2 = c(4,5,'six',TRUE)
sal2
class(sal2)

sal4 = c(2,FALSE)
sal4
class(sal4)

#Explicit Coercion
sal.exp = c(40,30,500)
sal.exp

sal.exp = as.integer(sal.exp)
class(sal.exp)

sal.exp = as.character(sal.exp)
class(sal.exp)
sal.exp

##_________________________________________________
##Lists
#Creation of list
v1 = 1:4
rm(m1)
m1
m1 = matrix(2:5,2)
m1
l1 = list(v1,m1,TRUE,12.12)
l1
class(l1)
str(l1)

#accessing elements of a list
l1[1]
l1[[1]][2]

l1[2]
l1[[2]][2,]

#list to vector conversion
list1 = list(1:4,TRUE)
list2 = list(11:14,FALSE)
list3 = list(TRUE,'THREE')

vec.1 = unlist(list1)
vec.2 = unlist(list2)
vec.3 = unlist(list3)
vec.1
vec.2
vec.3

#delete a list
rm(l1)

##__________________________________________________
##Factors
#Creating a factor
gender = c('M','F','M','F')
gender
class(gender)

gender.fact = factor(gender)
gender.fact
class(gender.fact)

#Levels of a factor
levels(gender.fact)

#structure of a factor
str(gender.fact)

#Ordered Factor
qualification = c('UG','PG','UG','PG')
qualification
class(qualification)

qualification.fact = factor(qualification, levels = c('UG','PG'), ordered = TRUE)
qualification.fact
levels(qualification.fact)
str(qualification.fact)

#_________________________________________________________
##Data Frames
#Creating a Data Frame
id = 1:4
empname = c('Rahul','Rohit','Rakesh','Ramesh')
empage = c(23,20,28,26)
emp = data.frame(id , empname , empage , stringsAsFactors = FALSE)

emp

#emp.db
emp.id = id
emp.id
emp.fname = empname
designation = c('ASE','SE','SSE','SE')
emp.designation = factor(designation)
emp.designation
emp.salary = c(100000,200000,125000,456780)

emp.db = data.frame(emp.id , emp.fname , emp.designation , emp.salary , stringsAsFactors = FALSE)
emp.db
str(emp.db)

#data frame functions
#dimension, number of rows and columns
dim(emp.db)
nrow(emp.db)
ncol(emp.db)

#head and tail
head(emp.db)
tail(emp.db)

head(emp.db, 2)
tail(emp.db, 2)

#accessing elements of a data frame
emp.db[1,1]
emp.db[,1:3]
emp.db[-2,]
emp.db[,c('emp.fname','emp.salary')]

emp.db$emp.fname                      #-----does not retain structure
emp.db[,'emp.fname',drop = FALSE]     #-----retains structure

#to get the summary of any data frame
str(emp.db)
summary(emp.db)

#-- Applying data frame functions on mtcars
mtcars
dim(mtcars)
nrow(mtcars)
ncol(mtcars)
head(mtcars)
tail(mtcars,2)
str(mtcars)
summary(mtcars)

#Updating row and column names of a data frame
names(emp.db)
row.names(emp.db)
row.names(emp.db) = c('r1','r2','r3','r4')
emp.db
names(emp.db) = c('c1','c2','c3','c4')
emp.db
attributes(emp.db)

#adding a row or a column to a data frame
new.row = list(5,'Rajat','ASE',87698)
emp.db = rbind(emp.db, r5 = new.row)
emp.db

gender = c('M','M','M','M','M')
emp.db = cbind(emp.db, gender)
emp.db

#__________________________________________________________#

##Functions
#SUM
sum(1:5)

v1 = c(1,2,3,NA)
sum(v1)

sum(v1, na.rm = TRUE)

sum(1:2, 3:5)

#MATRIX
matrix?
matrix() #uses all default arguments

#example of setting row and column name
mdat <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE,
               dimnames = list(c("row1", "row2"),
                               c("C.1", "C.2", "C.3")))

#____________________________________________________________________#

##PACKAGE
#DPLYR package
mtcars %>% filter(cyl == 4) %>% select(mpg,cyl)

#load the package
library(dplyr)

#PIPE functions
#used to connect multiple functions in a pipeline

head(mtcars)
mtcars %>% head()

#slice
#return observations based on a given observation number
dim(mtcars)
mtcars %>% slice(11,12)

mtcars %>% head() %>% slice(11,12)

#select--return a subset of the columns of a data frame
mtcars %>% select(1,2)
mtcars %>% select(cyl,mpg,disp)
mtcars %>% select(-c(cyl,mpg,disp))

#filter--extract a subset of rows from a data
mtcars %>% filter(cyl == 6)
mtcars %>% filter(cyl == 6) %>% nrow()
mtcars %>% filter(cyl == 8) %>% nrow()
mtcars %>% filter(cyl == 4,gear == 5) %>% nrow()
mtcars %>% filter(cyl == 4,gear != 5) %>% nrow()

#mutate
#add new variables /columns or transform existing variables
mtcars %>% head() %>% select(cyl, gear) %>% mutate(cyl_gear = cyl+gear)

#arrange
#reorder rows of a data frame
mtcars %>% arrange(cyl)
mtcars %>% arrange(desc(cyl))
mtcars %>% arrange(cyl,desc(disp))

#transmute
#create a single column by using 2 columns
mtcars %>% head() %>% select(cyl, gear) %>% transmute(cyl_gear = cyl + gear)

#rename
#rename variables in a data frame
mtcars.1 = mtcars
dim(mtcars.1)
?rename
rename(mtcars.1, MPG.new = mpg)

#group by and summarize
#group data based on variables/feature and generate summary
mtcars %>% summarise(mean(disp))
mtcars %>% summarise(min(disp))
mtcars %>% summarise(sd(disp))

mtcars %>% group_by(cyl) %>% summarise(mean(disp)) #gives a tibble
mtcars %>% group_by(cyl) %>% summarise(mean(disp)) %>% data.frame()

mtcars %>% group_by(cyl) %>% summarise(avg = mean(disp)) %>% data.frame()

mtcars %>% group_by(cyl) %>% summarise(disp_meanval = mean(disp),n())

mtcars %>% group_by(cyl) %>% summarise(n(),mean(disp),IQR(disp),sd(disp),mad(disp)) %>% data.frame()

##__________________________________________

##Operators
#arithmetic operators
vec.op1 = 1:5
vec.op2 = 11:15
vec.op1 + vec.op2
vec.op1 - vec.op2
vec.op1 * vec.op2
vec.op2 / vec.op1
vec.op2 %/% vec.op1 #gives only the quotient

vec.op1 ** 2
vec.op1 ^ 2

vec.op1 %% 2

#Relational Operators
v1 = 10
v2 = 10

v1 == v2
v1 == 100

mtcars %>% select(cyl, gear) %>% filter(cyl == 6)
mtcars %>% select(cyl, gear) %>% filter(cyl != 6)
mtcars %>% select(cyl, gear) %>% filter(cyl < 6)
mtcars %>% select(cyl, gear) %>% filter(cyl <= 6)
mtcars %>% select(cyl, gear) %>% filter(cyl > 6)
mtcars %>% select(cyl, gear) %>% filter(cyl >= 6)

#Logical Operators
library(dplyr)

select(mtcars, cyl, gear, carb) %>% filter(cyl==6 & gear==5)
select(mtcars, cyl, gear, carb) %>% filter(cyl==5 | gear==5)
select(mtcars, cyl, gear, carb) %>% filter(!(cyl==6 & gear==5)) %>% nrow()
select(mtcars, cyl, gear, carb) %>% filter((cyl==6 | gear==5) & carb==1)

#__________________________________________________________

#__For Loop
#iterate over values from an object

n = 1:5
n

for (i in n)
{
  print(i)
}  

for (i in n) 
{
  print('Hello!')
}

#--Creating a function with one parameter
#--which calculates sum of vector values

#Logic
#Create a temporary variable to store calculated sum value
#Loop through each value from vector and add it
#Return the variable which holds summation value

# 1 2 3 4 5
#Initial:total = 0
#Pass1: total = 0 + 1 = 1
#Pass2: total = 1 + 2 = 3
#Pass3: total = 3 + 3 = 6
#Pass4: total = 6 + 4 = 10
#Pass5: total = 10 + 5 = 15

sum_cust = function(a = 0)
{ 
  total = 0
  for (i in a) 
    {
    total = total + i
    }
return(total)
}

#Calling a function

sum_cust(1:5) #will just print it
temp1 = sum_cust(1:5)  #will store the value in a variable
temp1

sum_cust()
sum()

getwd()
setwd()