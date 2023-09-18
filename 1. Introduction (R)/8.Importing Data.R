
install.packages("openxlsx")
library(openxlsx)

#Text

#text
x = read.csv(file.choose(),header = TRUE, sep = ",") 
#header says if the first line of the file is the name of the columns
x
x = read.csv("dados/Credit.csv",header = TRUE, sep = ",")
x

#Excel

dados = read.xlsx("C:/Users/Documents/Example.xlsx",sheet= 1)
#sheet indicates the desired worksheet
dados



