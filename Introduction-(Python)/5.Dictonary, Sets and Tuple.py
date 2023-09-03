# dictonaries have a key/value structure
Grades = {'John': 6.0, 'Mary': 8.0, 'Peter': 6.5}
print(Grades)

print(Grades['John'])

#All keys 
Grades.keys()
#All values
Grades.values()

#Logically tests the existence
print('John' in Grades)
print('Francisco' in Grades)

#delete an element
del Grades['John']
print(Grades)

#add an element
Grades['Anne'] = 9
print(Grades)

# found a value, if it's not founded show the second parameter
Grades.get('James',"Not Founded!")

#unordered sets of non-repeating elements
bigdata = {'Spark', 'Hive', "Sqoop"}
print(bigdata)

#check existence
print('Spark' in bigdata)

#add an element
bigdata.add('Hadoop')
bigdata

#number of elements
print(len(bigdata))

bigdata.add("Spark")
bigdata

#tuples are lists that cannot be changed
#lists uses [], tuples uses ()
tuple = (1,2,3,4,5,6,7,8)
tuple

tuple[4]

#dictionaries where each position takes a tuple
dic2 = {(0, 1): 0, (1, 2): 1, (2, 3): 2, (3, 4): 3, (4, 5): 4,(5, 6): 5, (6, 7): 6, (7, 8): 7, (8, 9): 8, (9, 10): 9}
dic2

print(type(Grades))
print(type(bigdata))
print(type(tuple))