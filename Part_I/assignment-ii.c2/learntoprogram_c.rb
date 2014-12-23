#Chapter 7

#Word Sorter
words_list = []
blank = false

while blank == false
  puts "Enter a word."
  word = gets.chomp
  if word.empty?
    blank = true
  else
    words_list.push(word)
    blank = false
  end
end

puts words_list.sort

#Word Sorter, cont.

words_list = []
blank = false

while blank == false
  puts "Enter a word."
  word = gets.chomp
  if word.empty?
    blank = true
  else
    words_list.push(word)
    blank = false
  end
end

def my_sort(list)
  return list if list.size <= 1
    0.upto(list.size-2) { |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i]
      end
    }
  return list
end

loop do
  my_sort(words_list)
  break if my_sort(words_list) == my_sort(my_sort(words_list))
end

puts my_sort(words_list)

#Table of Contents, cont.

chapter = ["Chapter 1: Numbers","Chapter 2: Letters","Chapter 3: Variables"]
page = [1,72,118]
line_width = 50
puts "Table of Contents".center(line_width)
puts chapter[0].ljust(line_width/2) + page[0].to_s.rjust(line_width/2)
puts chapter[1].ljust(line_width/2) + page[1].to_s.rjust(line_width/2)
puts chapter[2].ljust(line_width/2) + page[2].to_s.rjust(line_width/2)
