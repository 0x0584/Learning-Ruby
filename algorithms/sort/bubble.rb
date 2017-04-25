## Anas Rchid <rchid.anas@gmail.com>
## Creation: 04/25/2017

# Algorithm: Bubble Sort
#
def bubble(list)
  return list if list.size <= 1 # already sorted
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end    
  end
  list
end

## Testing

puts bubble([-1, 2, 9, 4, 3, 5, -10])
