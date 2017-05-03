# Anas Rchid <rchid.anas@gmail.com>
# Creation: 05/03/2017
#
# About: fact(n)
# the classic function that computes the factorial of `n`

def fact(n)
  if n < 0; "negative number"
  elsif n == 0; 1
  else; n * fact(n-1)
  end
end

## TESTING

puts fact(-3), fact(0), fact(3)  

