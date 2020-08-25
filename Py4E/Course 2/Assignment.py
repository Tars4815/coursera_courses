# Python Data Structures assignments

# Week 3 - Assignment 7.1: Write a program that prompts for a file name, then opens that file and reads through the file, and print the contents of the file in upper case. 
# Use the file words.txt to produce the output below. You can download the sample data at http://www.py4e.com/code3/words.txt
# Use words.txt as the file name

fname = raw_input("Enter file name: ")
fh = open(fname)
#fname  https://www.py4e.com/code3/words.txt

for fx in fh:
    fy = fx.rstrip()
    print(fy.upper())
    
# Week 3 - Assignment 7.2: Write a program that prompts for a file name, then opens that file and reads through the file, looking for lines of the form:
# X-DSPAM-Confidence:    0.8475
# Count these lines and extract the floating point values from each of the lines and compute the average of those values and produce an output as shown below.
# Do not use the sum() function or a variable named sum in your solution.
# You can download the sample data at http://www.py4e.com/code3/mbox-short.txt when you are testing below enter mbox-short.txt as the file name.
# Use the file name mbox-short.txt as the file name

fname = input("Enter file name: ")
fh = open(fname)
count = 0
average = 0
for line in fh:
    if not line.startswith("X-DSPAM-Confidence:") : continue
    average += float(line[20:-1].strip())
    count = count + 1
    #print(line)
    
print("Average spam confidence:", (average/count))

# Week 4 - Assignment 8.4: Open the file romeo.txt and read it line by line. For each line, split the line into a list of words using the split() method.
# The program should build a list of words. For each word on each line check to see if the word is already in the list and if not append it to the list.
# When the program completes, sort and print the resulting words in alphabetical order. You can download the sample data at http://www.py4e.com/code3/romeo.txt
fname = input("Enter file name: ")
fh = open(fname)
lst = list()
for line in fh:                    
    word= line.rstrip().split()    
    for element in word:               
        if element in lst:         
            continue               
        else :                     
            lst.append(element)         
lst.sort()                         
print(lst)   

# Week 4 - Assignment 8.5: Open the file mbox-short.txt and read it line by line. When you find a line that starts with 'From ' like the following line:
# From stephen.marquard@uct.ac.za Sat Jan  5 09:14:16 2008
#You will parse the From line using split() and print out the second word in the line (i.e. the entire address of the person who sent the message). Then print out a count at the end.
# Hint: make sure not to include the lines that start with 'From:'. You can download the sample data at http://www.py4e.com/code3/mbox-short.txt
fname = input("Enter file name: ")
if len(fname) < 1 : fname = "mbox-short.txt"
fh = open(fname)
count = 0
for line in fh:
    if line.startswith("From "):
        w = line.strip().split()
        print(w[1])
        count = count + 1
print("There were", count, "lines in the file with From as the first word")

