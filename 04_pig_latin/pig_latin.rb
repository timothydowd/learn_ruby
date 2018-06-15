def translate(s)
	vowels = ["a","e","i","o","u"]
	a = s.split("")


	if a.include?(" ")  #checks if more than 1 word and splits into indivduals words if so and creates nested array
		a = s.split(" ")
		a.each do |element|
			element = element.split("")
		end
		puts a
	end
	
	a.each do |element|

		if element.is_a?(Array)
		
			loop do

			vowels.each do |vowel|
				if element[0] == vowel
					element.push("ay") # first check first letter for vowel, and if vowel is present add ay to end of word
					s = a.join("")
					
			
				end
			end

			a = a.rotate(1) #if vowel isn't present then its a constonant so send that consonant to the end of the word

		end		

			loop do

				vowels.each do |vowel|
					if a[0] == vowel
						a.push("ay") # first check first letter for vowel, and if vowel is present add ay to end of word
						s = a.join("")
						return s
			
					end
				end

				a = a.rotate(1) #if vowel isn't present then its a constonant so send that consonant to the end of the word

			end
		end	
	end

end




translate("crapple papppa poopooo")


