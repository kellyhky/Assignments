#Chapter 9

#One Billion Seconds Old
birthday = Time.mktime(1986, 11, 21, 10, 11, 2)
now = Time.now

seconds_to_one_billion = 1000000000 - (now - birthday)

puts (now + seconds_to_one_billion)

#Spank!
puts "Enter your year of birth:"
year = gets.chomp
puts "Enter your month of birth:"
month = gets.chomp
puts "Enter your day of birth:"
day = gets.chomp

my_birthday = Time.mktime(year, month, day)

now = Time.now

age = now - my_birthday

number_of_birthdays = (age/(365*24*60*60)).floor

number_of_birthdays.times { puts "SPANK!" }
