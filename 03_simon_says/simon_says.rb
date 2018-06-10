def echo(words)
	return words
end

def shout(words)
	return words.upcase
end

def repeat(words,count = 2)
	words_repeated = words
	i=1
	
	while i<count
		words_repeated = words_repeated +" "+ words
		i +=1
	end

	return words_repeated
		 
end


def start_of_word(word,count = 1)
	word_array = word.chars
	first_letters = ""
	i = 0

	while i<count
		first_letters = first_letters + word_array[i]
		i+=1
	end

	return first_letters
end


def first_word(words)

	seperate_words = words.split(/\W/)

	return seperate_words[0]
end

def titleize(s)
    words = s.split.map do |word|
    if %w(the and over).include?(word)
        word
    else
        word.capitalize
    end
  	end
  	words.first.capitalize!
  	words.join(" ")
end



