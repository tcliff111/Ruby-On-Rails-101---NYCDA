#Pretty much you count up to the number that you input.  While counting, if the current
# count is divisible by 15 you print "Fizzbuzz" and a new line character.  Else, if the
# count is divisible by 3 you print "Fizz".  Else, if the count is divisible by 5 you
# print "Buzz".  Else you end up just printing the count number.

#You check divisibility using mod (%) which just tells you the remainder after division.
# So if num % 15 == 0, then num/15 is an integer with no remainder and num is divisible by 15

def fizzbuzz(num)
  #You are checking the parameter num
  case
  #In the case that it's divisible by 15 then return "FizzBuzz"
  when num % 15 == 0 then "FizzBuzz"
  #Else, in the case that it's divisible by 3 then return "Fizz"
  when num % 3  == 0 then "Fizz"
  #Else, in the case that it's divisible by 5 then return "Buzz"
  when num % 5  == 0 then "Buzz"
  #Else, just return the number
  else num
  end
end

def fizz_buzz_to(limit)
  #Count the integers from 1 up to the limit parameter.  For each number, do
  #what's on the inside of the statement and save the current count in a 
  #variable called num
  1.upto(limit).each do |num|
  	#Just print out whatever the fizzbuzz method returns when it takes in the 
  	#parameter num
    puts fizzbuzz(num)
  end
end

class Homework
	def shout(word)
		word.upcase
	end

	def repeat_string(str, int)
		1.upto(int).each do |num|
			puts str
 		 end
	end
end


def calendar(holidays, dates) 
	map = Hash.new

	holidays.each_with_index do |holiday, index|
		map[holiday] = dates[index]
	end
	map
end

hw1 = Homework.new
puts hw1.shout("War or peace")
hw1.repeat_string("I know a string that gets on everybody's nerves", 27)

map = calendar(["Christmas", "Boxing Day"], ["12/25", "12/26"])

puts map["Christmas"]
puts map["Boxing Day"]

#Questions:
# 1.  An instance variable is a variable that is a property of an individual object.
# So this variable would be defined in the Class definition, but the actual value
# would change from object to object.
# 2.  Integer.gcd(int2) returns the greatets common divisor of the two integers.  So 7.gcd(6)
#would return 1 and 42.gcd(6) would return 6.

