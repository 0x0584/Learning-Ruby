# Author:       Anas Rchid <rchid.anas@gmail.com>
# Creating:     04/23/2017

# Insertion Sort Algorithm: 
# TODO: write formal algorithm here
def insort(array)
  # loop throw the array starting with
  # the second-element (e.g. index 1)
  1.upto(array.length - 1) do |i|
    p_index = i - 1         # previous-element index
    current = array[i]      # take the current-element
    # while: 
    # 1. we are in the range of the array 
    # 2. the previous-element is greater-than
    # the current-element. do the following:
    # insert the value of the p_index-element
    # to the current-element
    while (p_index >= 0) && (array[p_index] > current) do
      # puts " previous index "+p_index.to_s + "\n>? " + (array[p_index] > current).to_s + "\ncurrent index " + i.to_s + "\nprevious element "+ array[p_index].to_s + "\ncurrent element " + current.to_s
      # gets.chomp()
      array[p_index + 1] = array[p_index]
      p_index -= 1              # move one step back
    end
    # set the current-element in the right place
    array[i] = current
  end
  # finally return the array
  array
end

puts insort([-1, 2, 45, -2])
