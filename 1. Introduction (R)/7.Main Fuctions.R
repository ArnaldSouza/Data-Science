#Head e Tail
esoph #default 6 rows
head(esoph) #first
tail(esoph) #last
head(esoph, n=10) #10 rows

#Dimensions
dim(esoph) #returns number of rows and columns 
dim(esoph)[1] #1 -> returns the number of rows , 2 -> return columns number 

#Length
#if used with a two-dimensional object also return columns 
length(islands) #returns length


colnames(esoph) #returns column name


rownames(esoph) #returns row name,if there's not a name it returns its index

summary(esoph) #some statistics from the dataset

x = file.choose() #opens a dialog box to select the file
x #returns the file path, facilitates dynamic access


