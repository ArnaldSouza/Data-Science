#while example
count = 1
while count <= 5:
    print(count)
    count += 1
    
#range(0, 10, 1):
#range(start, stop, increment)
#python "ignores" the last interval value
#The increment can be negative

#default FOR 
for n in range(0, 6):
    print(n+1)
    
for n in range(1, 5):
    print(n)

# descending FOR
for n in range(10, 0,-1):
    print(n)
    
#BREAK example
#it will stop at 3 because the break is before the print
for n in range(0, 10):
    if n==4:
        break
    print(n)
    
#CONTINUE example
#will skip number 4
for n in range(0, 10):
    if n==4:
        continue
    print(n)