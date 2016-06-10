def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(arr)
  total = 0
  for i in 0..arr.length-1
  	total += arr[i]
  end
  return total
end

def multiply(numbers)
  result = 1
  numbers.each { |n| result *= n.to_i }
  return result
end

def power(a,b)
  return a**b
end

def factorial(num)
  product = 1
  1.upto(num) { |x| product *= x }
  return product
end

add(0,0)
add(2,2)
add(2,6)
subtract(10,4)
sum([])
sum([7])
sum([7,11])
sum([1,3,5,7,9])
p multiply([7,9])
p multiply([2,3,4,5,6,7])
p power(5,3)
p factorial(0)
p factorial(1)
p factorial(2)
p factorial(5)
p factorial(10)


