### PART I: get text form a file
rubyscript = $0                 # the location of the file
# assign the address of the opened file to some io-typed variable
content = open(rubyscript)

puts content.read               # print the content

content.close                   # always close the opened file!
