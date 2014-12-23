def translate(str)

 def pig_latin(word)
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  consonants = []
  ('a'..'z').each {|x| consonants.push(x)}
  ('A'..'Z').each {|y| consonants.push(y)}
  consonants.each {|z| 
   if vowels.include?(z) 
    consonants.delete(z)
   end
  } 
 
  i = 0
  cons_arr = []  
  if vowels.include?(word[0])
   word = word + 'ay'
  elsif word.downcase.start_with?('qu')
   word = word + word[0..1] + 'ay'
   word = word.sub(word[0..1], '')
  elsif word.downcase.start_with?('squ')
   word = word + word[0..2] + 'ay'
   word = word.sub(word[0..2], '')
  else
   while consonants.include?(word[i]) do
    if consonants.include?(word[i]) 
     cons_arr.push(word[i])
	 word[i] = '*'
	end
	i += 1
   end
   first = cons_arr.join
   word = word.delete('*') + first + 'ay'
  end
  return word
 end
 
 def formatting(f)
  if f.scan(/[A-Z]/).count > 0
   f.capitalize!
  end
  if f.scan(/[[:punct:]]/).count > 0
   punc = f.scan(/[[:punct:]]/)
   punc = punc.join
   f = f.delete!(punc)
   f = f << punc
  end
  return f
 end 
 
 arr = str.split(' ')
 new_arr = []
 if arr.count == 1
  unformat_str = pig_latin(str)
  return formatting(unformat_str)
 else
  for e in arr do 
   unformat_e = pig_latin(e)
   new_arr.push(formatting(unformat_e))
  end
  new_str = new_arr.join(' ')
  return new_str 
 end
end