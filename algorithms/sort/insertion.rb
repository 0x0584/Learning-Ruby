## Author:       Anas Rchid <rchid.anas@gmail.com>
## Creating:     04/23/2017

# Insertion Sort Algorithm: 
# we begin with an unsorted array (the passed array)
# and a space for sorted array, which contains no element
# at the beginning, one at a time, we remove an element
# from the unsorted an insert it in the right position
def insort(array)
  # loop throw the array starting with
  # the second-element (e.g. index 1)
  1.upto(array.length - 1) do |i|
    p_index = i - 1         # previous-element index
    current = array[i]      # take the current-element
    # while: 
    # 1) we are in the range of the array 
    # 2) the previous-element is greater-than
    #    the current-element
    # do the following:
    while (p_index >= 0) && (array[p_index] > current) do
      # assign the value of the p_index-element
      # to the next-element
      array[p_index + 1] = array[p_index]
      p_index -= 1              # move one step back
    end
    # set the current-element in the right place
    array[p_index + 1] = current
  end
  # finally return the array
  array
end

## TESTING

parray = [10, 2, 5, 6, 5]       # positive array
narray = [-1, -10, -2, -3]      # negative array
marray = [-1, 10,-3, 6, 5]      # mixed array

print parray.to_s + " -> " + insort(parray).to_s + "\n"
print narray.to_s + " -> " + insort(narray).to_s + "\n"
print marray.to_s + " -> " + insort(marray).to_s + "\n"
