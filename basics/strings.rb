### PART I: basic manipulation
##

#$KCODE = 'u'                    # u: UTF-8, e: EUC, s: SJIS, a or n: ASCII

foo = "this is a string."       # a string is just an array 
puts foo[0..4]                  # get a certain rang

foo.each_char do |ch|           # print each character individually
  print ch.to_s
end

### PART II: regexp
##
# ^     Matches the beginning of a line
# $     Matches the end of a line
# \w    Matches a word character
# [ac]  Matches any character in the brackets
# [^ab] Matches any characters not in the brackets
# *     Matches zero or more occurrences of the previous regexp
# +     Matches one or more occurrences of the previous regexp
# ?     Matches zero or one occurrences of the previous regexp

puts "\n"+ foo.scan(/\w+/).to_s

=begin
this is a multi-line
comment! cool!!
=end

