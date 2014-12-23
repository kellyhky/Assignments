def add(a1, a2)
 return a1 + a2
end

def subtract (s1, s2)
 return s1 - s2
end

def sum(arr)
 if arr.empty?
  sum_value = 0
 else
  sum_value = arr.inject {|sum, x| sum + x}
 end
 return sum_value
end

def multiply(m_arr)
 mult_value = m_arr.inject {|mult, y| mult * y}
 return mult_value
end

def power(num, pow)
 return num**pow
end

def factorial(f)
 f_arr = []

 if f == 0
  return 1
 else
  for z in (1..f) do
   f_arr.push(z)
  end
  return f_arr.inject {|f_mult, z| f_mult * z}
 end
end