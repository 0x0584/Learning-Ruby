## Anas Rchid <rchid.anas@gmail.com>
## Creation: 04/25/2017

# Algorithm: Bubble Sort
#
# we take a pair each time, then we compare the pair.
# if the pair match the condition, which is the order
# type, we swap them. and keep looping. 
def bubble(array)
  return array if array.size <= 1 # no need to sort one number! 
  swapped = true                  # flag when we swap two elements
  while swapped do                # while the array is not sorted yet
    swapped = false        # if the array is sorted this remains false
    0.upto(array.size - 2) do |i| # array.size - 2 -> we use a pair
      if array[i] > array[i+1]                      # acceding order
        array[i], array[i+1] = array[i+1], array[i] # swap values
        swapped = true                              # we did swap! YAY!
      end
    end    
  end
  array                         # return the arrray
end

## Testing

positive = [ 1, 2, 9, 4, 3, 5, 10, 12]
puts bubble(positive)

negative = [-1, -2, -9, -4, -3, -5, -10]
puts bubble(negative)

mixed = [-1, 2, 9, -4, 3, 5, -10]
puts bubble(mixed)
