#Define a split_in_two method that accepts an array. Id like to split the `array` into two arrays,
#If the original array has an even number of elements, ensure that the 2 new arrays have an equal number of elements. 
#If the original array has an odd number of elements, ensure that the first new array has the greater number of elements.

def split_in_two(array)
  if array.length%2==0
    return array.first(array.length/2),array.last(array.length/2)
  else
    return array.first(array.length/2),array.last(array.length/2+1)
  end
end
arr=[1,2,3,4,5,6,7,8,9,10]
p split_in_two(arr)

