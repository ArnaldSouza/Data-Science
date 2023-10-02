#import data, empty string as NA, string as factors
data = read.csv("./data/tempo.csv", sep = ";", na.string="", stringsAsFactors=T)
head(data)
summary(data)

#explore data and data appearance
#appearance
counts = table(data$Aparencia)
counts
#type
counts = table(data$Vento)
counts
barplot(counts, main = "Vento", xlab="Vento")
#jogar
counts = table(data$Jogar)
counts
barplot(counts, main = "Jogar", xlab="Jogar")

#explore numerical columns
#temperatura
summary(data$Temperatura)
boxplot(data$Temperatura)
hist(data$Temperatura)