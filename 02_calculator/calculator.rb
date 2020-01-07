#write your code here

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  result = 0
  numbers.each do |num|
    result += num
  end
  result
end

def multiply(numbers)
  result = 1
  numbers.each do |num|
    result *= num
  end
  result
end

def power(a, b)
  a**b
end

def factorial(a)
  return 1 if a <= 1
  a * factorial(a - 1)
end
