def echo(str)
 return str
end

def shout(str)
 return str.upcase
end

def repeat(str, num=2)
 repeat_arr = []
 if num > 2
  num.times {repeat_arr.push(str)}
  return repeat_arr.join(' ')
 else
  return "#{str} #{str}"
 end
end

def start_of_word(str, chars=1)
 chars = chars - 1
 if chars > 0
  return str[0..chars]
 else
  return str[0]
 end
end

def first_word(str)
 str_arr = str.split(' ')
 if str_arr.count > 1 
  return str_arr[0]
 else
  return str
 end
end

def titleize(str)
 little_words = ["of", "a", "and", "the", "or", "to", "over", "if", "not"]
 str_arr = str.split(' ')
 str_arr.each {|x|
  if little_words.include?(x)
   x.downcase!
  else
   x.capitalize!
  end   
 }
 str_arr[0].capitalize!
 new_str = str_arr.join(' ')
 return new_str
end