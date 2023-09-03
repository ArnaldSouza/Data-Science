#ways to create lists
lst = [1,2,3,4,5]
print(lst)

#many types
lst2 = [1,2,3,"4",True]
print(lst2)

#list with list
lst3 = [12,[1,2,3,4,5],"a"]
print(lst3)

#creating a list with RANGE
lst4 = list(range(0,10))
print(lst4)

#list length
print(len(lst))

#accessing an element
print(lst[0])
#index 1 is a list 
print(lst3[1])
#changing the position from different idexes
lst[0] = 4
print(lst)

#Iterate through a list 
for n in range(0, len(lst4)):
    print(lst4[n])