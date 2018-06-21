class Book
  def initialize
  end

  def title=(t) #setter

  	exclude = ["the", "a", "an", "and", "in", "of"]

  	t = t.split(" ")
    t.each do |word|
    	if !exclude.include? word
    		
      	    word.capitalize!
            
        end
    end
    t[0].capitalize!
    @title = t.join(" ")
    
    	

  end



  def title #getter
    @title
  end


end



