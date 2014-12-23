class Book
 attr_accessor :title

  def title=(title)
   words = ['and', 'or', 'to', 'of', 'in', 'an', 'a', 'the']
   @title = title.split(' ').each {|x| 
	unless words.include?(x)
	 x.capitalize! 
	end
   }
   @title[0].capitalize!
   @title = @title.join(' ')
  end
  
end
