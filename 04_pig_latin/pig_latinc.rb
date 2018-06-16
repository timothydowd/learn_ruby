def translate(s)

  vowels = ["a","e","i","o","u"]
  split_sentence = s.split(" ")

  split_sentence.each do |word|
    catch (:stop) do
	  loop do
        vowels.each do |vowel| #checks if first letter of word is a vowel
		  if word[0] == vowel
		    word = word.split("") #if so it turns to array and adds ay to end, then turns back to str
			word.push("ay")
			word = word.join("")
			puts word
			return word

			throw :stop # exits nested loop to avoid checking the rest of vowels.

		  end
				
		end

		word = word.split("") #if vowel isn't present then its a consonant so send that consonant to the end of the word
		word = word.rotate(1)
		word = word.join("")
	  end
	end
  end
end







