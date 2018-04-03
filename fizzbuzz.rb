def fizzbuzz(number = nil)
  if number.nil?
    return "Error: No parameter specified"
  elsif !number.is_a? Numeric
    return "Error: Parameter is not a number"
  else
    checkfizzbuzz(number)
  end
end

def checkfizzbuzz(number)
  if(number%3 == 0 && number%5==0)
    return "Fizzbuzz"
  end

  if(number%3 == 0)
    return "Fizz"
  end

  if(number%5 == 0)
    return "Buzz"
  end

  return number
end