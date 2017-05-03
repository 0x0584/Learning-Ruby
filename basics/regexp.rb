### PART I: example found in Ruby User's Guide by Matz
##

st = "\033[7m"
en = "\033[m"

puts "Enter an empty string at any time	to exit."

while true
  print	"str>	"; STDOUT.flush; str=gets.chop
  break	if str.empty?
  print	"pat>	"; STDOUT.flush; pat=gets.chop
  break	if pat.empty?
  re = Regexp.new(pat)
  # gsub: substitute the pat with it self using
  # this `\\&` thing! which i just learned it's
  # a special character `\&` that refer to whatever
  # mathed the pattern in the first place. 
  puts str.gsub(re, "#{st}\\&#{en}")
end
