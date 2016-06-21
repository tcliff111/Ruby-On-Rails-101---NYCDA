class Utility
	def self.count_words(str)
		hash = Hash.new
		tokens = str.split(" ")
		for token in tokens
			if hash[token]
				count = hash[token]
				hash[token] = count + 1
			else
				hash[token] = 1
			end
		end
		hash
	end
end


hash = Utility.count_words("It was the best of times, it was the worst of times.")

puts hash

class Animal
	def speak
		"Unspecfic noise"
	end
end

class Cow < Animal
	def speak 
		"Let's go to the MOOOOOO-views"
	end
end

puts Cow.new.speak