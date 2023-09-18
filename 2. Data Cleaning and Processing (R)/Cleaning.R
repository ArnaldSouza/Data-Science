#import data, empty string, string as factors
data = read.csv("Churn.csv", sep = ";", na.strings="", stringsAsFactors=T)
head(data)
summary(data)

#columns
#give correct names to the columns 
colnames(data) = c("ID", "")