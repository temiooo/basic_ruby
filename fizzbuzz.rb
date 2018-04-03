def fizzbuzz(number = nil)
  return "Error: No parameter specified" if number.nil?

  return "Error: Parameter is not a number" unless number.is_a?(Numeric)
  
  if fizz?(number) && buzz?(number)
    return "Fizzbuzz"

  elsif fizz?(number)
    return "Fizz"

  elsif buzz?(number)
    return "Buzz"

  else
    number
  end
end

private

def fizz?(num)
  num % 3 == 0
end

def buzz?(num)
  num % 5 == 0
end
