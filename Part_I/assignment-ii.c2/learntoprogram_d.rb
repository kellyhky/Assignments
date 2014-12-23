#Chapter 8

def english_number(num)
  if num < 0
    return 'Please enter a number that isn\'t negative.'
  elsif num > 9999999
    return 'Please enter a smaller number.'
  elsif num == 0
    return 'zero'
  end


def two_digits(n)
  onesPlace = ['one', 'two', 'three', 'four', 'five',
    'six','seven','eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
    'sixteen', 'seventeen', 'eighteen', 'nineteen']

  if n > 10 && n < 20
    return teenagers[n - 11]
  elsif n % 10 == 0
    return tensPlace[(n/10) - 1]
  elsif n < 10
    return onesPlace[n - 1]
  else
    return tensPlace[(n/10).floor - 1] + "-" + onesPlace[(n%10) - 1]
  end
end

num_arr = num.to_s.split("")

while num_arr.size < 7
  num_arr.insert(0, "0")
end

num_converted = [num_arr[0],num_arr[1],num_arr[2],num_arr[3],num_arr[4], num_arr[5]+num_arr[6]]
num_converted.map! {|x| x.to_i}

million = ""
hun_thousand = ""
ten_thousand = ""
thousand = ""
hundred = ""
last_two = ""

if num_converted[0] > 0
  million = two_digits(num_converted[0]) + "-million-and-"
end
if num_converted[1] > 0
  hun_thousand = two_digits(num_converted[1]) + "-hundred-"
end
if num_converted[2] > 0
  ten_thousand = two_digits(num_converted[2]*10 + num_converted[3]) + "-thousand-and-"
end
if num_converted[2] == 0 && num_converted[3] > 0
  thousand = two_digits(num_converted[3]) + "-thousand-and-"
end
if num_converted[1] != 0 && num_converted[2] == 0 && num_converted[3] == 0
  thousand = "thousand-and-"
end
if num_converted[4] > 0
  hundred = two_digits(num_converted[4]) + "-hundred-and-"
end
if num_converted[5] > 0
  last_two = two_digits(num_converted[5])
end

num_string = million+hun_thousand+ten_thousand+thousand+hundred+last_two

if num_string.end_with?("-and-")
  5.times {num_string.chop!}
end

return num_string
end

i = 9999
while i > 2 do
  puts "#{english_number(i).capitalize} bottles of beer on the wall, #{english_number(i)} bottles of beer."
  puts "Take one down, pass it around, #{english_number(i-1)} bottles of beer on the wall..."
  i-=1
end
puts "Two bottles of beer on the wall, two bottles of beer."
puts "Take one down, pass it around, one bottle of beer on the wall..."
puts "One bottle of beer on the wall, one bottle of beer."
puts "Take one down, pass it around, no more bottles of beer on the wall..."
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall..."
