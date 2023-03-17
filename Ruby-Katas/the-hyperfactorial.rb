#This kata asks us to return the hyperfactorial of a number

#Your task
#Implement a function hyperfact(num) that takes a positive integer num and returns the hyperfactorial of it.

#In order for your answer not to be too messy (hyperfactorial of 100 is 9015 digits long) give the answer modulo 1000000007.

#Notes
#1 <= n <= 300

def hyperfact(num)
  (0..num).to_a.map {|i| i ** i}.inject(:*) % 1000000007
end

puts hyperfact(11)
#867274372