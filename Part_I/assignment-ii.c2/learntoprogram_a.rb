#Chapter 1

#Hours in a year
puts "There are #{(365*24)} hours in a year."

#Hours in a decade
puts "There are #{(365*24*10)} hours in a decade."

#Seconds old
puts "I am #{(28*365*24*60*60)} seconds old."

#1204 million seconds old
puts "You are #{1204000000/(365*24*60*60)} years old."

#Chapter 4

#Greeting
puts "What's your first name?"
first_name = gets.chomp
puts "What's your middle name?"
middle_name = gets.chomp
puts "What's your last name?"
last_name = gets.chomp

puts "Greetings, #{first_name} #{middle_name} #{last_name}!"

#Favorite Number
puts "What's your favorite number?"
number = gets.chomp
new_number = number.to_i + 1
puts "Great, but #{new_number} is a bigger, better number."

#Chapter 5

#Angry Boss
puts "What do you want?!"
answer = gets.chomp
puts "WHADDAYA MEAN \"#{answer}\"?!?  YOU'RE FIRED!!"

#Table of Contents
chapter = ["Chapter 1: Numbers","Chapter 2: Letters","Chapter 3: Variables"]
page = [1,72,118]
line_width = 50
puts "Table of Contents".center(line_width)
puts chapter[0].ljust(line_width/2) + page[0].to_s.rjust(line_width/2)
puts chapter[1].ljust(line_width/2) + page[1].to_s.rjust(line_width/2)
puts chapter[2].ljust(line_width/2) + page[2].to_s.rjust(line_width/2)
