def palindrome_recursive(string)
  if string.length == 0 || string.length == 1
    true
  elsif string[0] == string[-1]
    palindrome_recursive(string[1..-2])
  else
    false
  end
end

def recursive_beers(n)
  return 'no more beers on the wall' unless n > 0

  puts "#{n} beers on the wall"
  recursive_beers(n - 1)
end

def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fib(n - 1) + fib(n - 2)
  end
end

def flat(array, new_array = [])
  array.each do |element|
    if element.is_a?(Array)
      flat(element, new_array)
    else
      new_array << element
    end
  end
  new_array
end

roman_mapping = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}

def to_roman(roman_mapping, int, result = '')
  return result if int == 0

  roman_mapping.each_key do |divisor|
    quotient, modulus = int.divmod(divisor)
    result << roman_mapping[divisor] * quotient
    return to_roman(roman_mapping, modulus, result) if quotient > 0
  end
end

def from_roman(roman_mapping, roman_val, result = 0)
  return result if roman_val.empty?

  roman_mapping.each do |key, value|
    next unless value == roman_val[0..1] || value == roman_val[0]

    n = 0 + value.length
    result += key
    return from_roman(roman_mapping, roman_val[n..], result)
  end
end

def fibonacci(num)
  return 0 if num.zero?
  return 1 if [1, 2].include?(num)

  fibonacci(num - 1) + fibonacci(num - 2)
end
