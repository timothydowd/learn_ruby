def translate(s)
  vowels = ["a","e","i","o","u"]

	if s.split("").include?(" ") # multiple word check
	  split_sentence = s.split(" ")
	  split_sentence.each do |word|
	    catch (:stop) do
		  loop do

		    vowels.each do |vowel|
			  if word[0] == vowel
				word = word.split("")
				word.push("ay")
				word = word.join("")

				
				puts word
				throw :stop # exits nested loop to avoid checking the rest of vowels.

			  end
				
			end

			word = word.rotate(1) #if vowel isn't present then its a constonant so send that consonant to the end of the word
		  end
		end
	  end	
	

	else

	  array = s.split("")

	  loop do

	    vowels.each do |vowel|
		  if array[0] == vowel
		    array.push("ay") # first check first letter for vowel, and if vowel is present add ay to end of word
		    s = array.join("")
		    puts s
		    return s
			
		  end
	    end

	    array = array.rotate(1) #if vowel isn't present then its a constonant so send that consonant to the end of the word

	  end
	end
	

end




translate("apple craphole trollop")


