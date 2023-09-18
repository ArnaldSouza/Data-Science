
#IF
a = 10
b = 5
if (a < b){
  print("True")
}else{
  print("False") 
}

#IFELSE

x = ifelse(a <= 10,"A is greater than or equal to ten","A is not greater than ten")
x

#For
for (i in 1:10) {
  print(i)
  }

#While
a = 6
while(a <= 10)
{
  print(a)
  a = a+2
}

#Function
evenorodd <- function(x) {  
  return(ifelse(x%%2==0,"Even","Odd"))  
}

evenorodd(7)
evenorodd(14)


