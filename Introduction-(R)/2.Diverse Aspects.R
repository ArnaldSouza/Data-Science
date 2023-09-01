Directory of work

getwd()
setwd("c:\\dados")

Object Type

class(iris)

Save an object .

#clone
iristeste = iris
#save
save(iristeste, file="iristeste.Rdata")
#removing from R
rm(iristeste)
#testing the removal
iristeste

Load 

#load the object of the disk
load(file="iristeste.Rdata")
#test
iristeste

Vector e basic graphic

x = c(12,72,108,168) #c -> combine
y = c(-1,25,9,4)
plot(x,y)


