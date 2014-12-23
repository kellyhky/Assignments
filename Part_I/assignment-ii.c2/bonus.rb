#Problem 1
def multiples_of_three_and_five
  count = 0
  for x in (1..999) do
    if x % 3 == 0 || x % 5 == 0
      count += x
    end
  end
  return count
end
#Answer: 233,168

#Problem 2
def even_fibonacci_numbers
  fibonacci = [1, 2, 3]
  while fibonacci[-1] < 4000000 do
    x = fibonacci[-1] + fibonacci[-2]
    fibonacci.push(x)
  end
  count = 0
  fibonacci.each { |n|
    if n % 2 == 0
      count += n
    end
  }
  return count
end
#Answer: 4,613,732

#Problem 3
def largest_prime_factor
  num = 600851475143
  factors = []

  def is_prime?(n)
    for x in (2...n) do
      if n % x == 0
        return false
      end
    end
    return true
  end

  for y in (2...1000) do
    if num % y == 0 && is_prime?(y) == true
      factors.push(y)
    end
  end

  return factors.max
end
#Answer: 839
