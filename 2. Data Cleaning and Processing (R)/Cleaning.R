#import data, empty string, string as factors
data = read.csv("./data/Churn.csv", sep = ";", na.strings="", stringsAsFactors=T)
head(data)
summary(data)

#columns
#give correct names to the columns 
colnames(data) = c("ID", "Score", "State", "Gender", "Age", "Patrimony", "Balance",
 "Products", "CreditCard", "Active", "Salary", "Out")
head(data)

#explore data, categorical columns
#States
counts = table(data$State)
barplot(counts, main = "State", xlab = "State")

#gender
counts = table(data$Gender)
barplot(counts, main = "Gender", xlab = "Gender")


#explore numerical columns 
#Score
summary(data$Score)
hist(data$Score)

#Age
summary(data$Age)
hist(data$Age)

#Balance
summary(data$Balance)
boxplot(data$Balance)
hist(data$Balance)

#Salary
summary(data$Salary)
boxplot(data$Salary)
boxplot(data$Salary, outline = F)


#missing values - NAs
data[!complete.cases(data),]


#PROCESSING
#Salary
summary(data$Salary)
#see median
median(data$Salary, na.rm = T)
#NA has now the median value
data[is.na(data$Salary),]$Salary = median(data$Salary, na.rm = T)
#check if already exists NA
data[!complete.cases(data$Salary),]


#lack of gender standard
unique(data$Gender)
summary(data$Gender)
#transform Fem and Feminino into F
# and Masculino , "" into M
data[is.na(data$Gender) | data$Gender == "Masculino",]$Gender = "M"
data[data$Gender == "Fem" | data$Gender == "Feminino",]$Gender = "F"
#see results
summary(data$Gender)
#remove not used levels
data$Gender = factor(data$Gender)
#visualize again
summary(data$Gender)


#Ages out of domain
summary(data$Age)
#check abnormals ages
data[data$Age < 0 | data$Age > 110,]$Age
data[is.na(data$Age)] #there's no NA age
#option, fill with median
median(data$Age)
#substitution
data[data$Age < 0 | data$Age > 110,]$Age = median(data$Age)
#find abnormal age again
data[data$Age < 0 | data$Age > 110,]$Age    
summary(data$Age)


#duplicated data
#finding by ID
x = data[duplicated(data$ID),]
x
#we checked that ID 81 is duplicated 
#lets delete by index 82
data = data[-c(82),]
#find again the duplicated row
data[data$ID == x$ID,]
#check again duplicated
x = data[duplicated(data$ID),]
x


#State out of domain
#out of domain - categorical
unique(data$State)
summary(data$State)
#fill with mode, RS
data[!data$State %in% c ("RS","SC","PR"),]$State = "RS"
summary(data$State)
#remove not used factors
data$State = factor(data$State)
summary(data$State)


#Outliers
#outliers, creating a parameter with standard deviation
std = sd(data$Salary, na.rm = T)
std
data[data$Salary >= 2*std,]$Salary
#another way, similar result
boxplot(data$Salary)
boxplot(data$Salary, outline = F)
x = boxplot(data$Salary)$out
x

#update all to median
median(data$Salary)
data[data$Salary >= 2*std,]$Salary = median(data$Salary)
#check if there's outliers
data[data$Salary >= 2*std,]$Salary
boxplot(data$Salary)