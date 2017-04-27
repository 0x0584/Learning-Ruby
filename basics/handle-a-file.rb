### PART I: get text form a file
##  TODO: understand how this works

rubyscript = $0                 # the location of the file
content = open(rubyscript)      # assign the address of the file
puts content.read               # print the content


### PART II: write into a file
##

bak = rubyscript + ".bak"
file = open(bak, "w")           # open file in write mode
file.write("# this file was generated" + content.read)
file.close

### PART III: some other stuff
##


file = open(bak)           # open file in write mode

puts file.read
#file.truncate(0)           # empties a file :uncomment to take effect:

#file.seek(0)                    # :uncomment if you want it to work:
puts file.gets.chomp

file.close
content.close                   # always close the opened file!

