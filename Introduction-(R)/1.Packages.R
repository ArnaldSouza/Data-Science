

install.packages("e1071")
library(e1071)



#unload package from memory
detach("package:e1071", unload=TRUE)
#remove/uninstall
remove.packages("e1071")

plot(iris[,1:4])


