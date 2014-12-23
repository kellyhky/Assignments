#Chapter 6

#Bottles of Beer
i = 99
while i > 0 do
  puts "#{i} bottles of beer on the wall, #{i} bottles of beer."
  puts "Take one down, pass it around, #{i-1} bottles of beer on the wall..."
  i-=1
end
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall..."

#Deaf Grandma
puts "Say something to grandma."
heard = false
byes = []

while heard == false do
  response = gets.chomp
  byes.push(response)
  if byes[-1] == "BYE" && byes[-2] == "BYE" && byes[-3] == "BYE"
    three_byes_in_a_row = true
  end
  if response.upcase == response && response != "BYE"
    puts "NO, NOT SINCE 19#{rand(99)}!"
    heard = true
  elsif three_byes_in_a_row == true
    puts "Goodbye!"
    heard = true
  elsif response == "BYE"
    puts "..."
    heard = false
  else
    puts "HUH?!  SPEAK UP, SONNY!"
    heard = false
  end
end

#Leap Years
puts "Give starting year:"
start_year = gets.chomp
puts "Give ending year:"
end_year = gets.chomp
years = []

for x in ((start_year.to_i)..(end_year.to_i)) do
  years.push(x)
end

years.each do |y|
  if y % 400 == 0 || (y % 4 == 0 && y % 100 != 0)
    puts y
  end
end
