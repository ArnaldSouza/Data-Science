Create two variables Ana and Paulo and assign them values of their ages, respectively 8 and 12 years old. Variables must be of integer type. Print on the console "The girl is older" or "The boy is older" as a result of a logic test.

Ana = 8L
Paulo = 12L
ifelse(Ana > Paulo,"The girl is older", "The boy is older")

BOD is an existing object in R. Check which class
of this object.

class(BOD)

Create a vector that stores numbers from 1 to 10 and later prints the even values.

vetor = c(1,2,3,4,5,6,7,8,9,10)
n = 1
while(n<=10){
  
  if(vetor[n]%%2==0){
   print(vetor[n])
  }
  
  n = n+1
}

women is an existing dataframe in R. Print the last 10 lines

tail(women, n=10)

Use R's plot function to produce a plot of the Sepal.Width and Petal.Length attributes of the Iris dataset. The chart should only print from lines 50 to 100.

plot(iris[50:100,2:3])

Create two vectors of equal sizes, some positions equivalent to the vectors and print the result.

vec1 = c(1,6,8,15)
vec2 = c(-5,3,-52,147)
vec = vec2 + vec1
vec

Print the number of rows, number of columns, row names and column names of the CO2 dataset.

CO2
rows = dim(CO2)[1]
columns = dim(CO2)[2]
cat("The number of rows is",row,"\n")
cat("The number of columns is",columns,"\n")

colnames(CO2)
rownames(CO2)
         


