#Complete the method which accepts an array of integers, and returns one of the following:

#"yes, ascending" - if the numbers in the array are sorted in an ascending order
#"yes, descending" - if the numbers in the array are sorted in a descending order
#"no" - otherwise
#You can assume the array will always be valid, and there will always be one correct answer.

def is_sorted_and_how(arr)
  if arr == arr.sort
    "yes, ascending"
  elsif arr == arr.sort.reverse
    "yes, descending"
  else
    "no"
  end
end

puts is_sorted_and_how([1, 3, 5, 7])
#yes, ascending
puts is_sorted_and_how([8, 6, 4, 2])
#yes, descending
puts is_sorted_and_how([12, 56, 2, 5, 78])
#no