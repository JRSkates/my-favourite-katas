#Return an array containing the numbers from 1 to N, where N is the parametered value.

#Replace certain values however if any of the following conditions are met:

#If the value is a multiple of 3: use the value "Fizz" instead
#If the value is a multiple of 5: use the value "Buzz" instead
#If the value is a multiple of 3 & 5: use the value "FizzBuzz" instead
#N will never be less than 1.

#Method calling example:

#fizzbuzz(3) -->  [1, 2, "Fizz"]

def fizzbuzz(n)
  (1..n).map { |x| x%15==0 ? "FizzBuzz" : x%5==0 ? "Buzz" : x%3==0 ? "Fizz" : x }
end

p fizzbuzz(30)
#[1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 
#16, 17, "Fizz", 19, "Buzz", "Fizz", 22, 23, "Fizz", "Buzz", 26, "Fizz", 28, 29, "FizzBuzz"]