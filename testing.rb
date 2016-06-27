
class Vehicle
	attr_accessor :is_cool

	def initialize
		self.is_cool = initial_value
	end

	def initial_value
		false
	end

	def accelerate
		"Accelerating at #{speed} mph"
	end

	def speed
		30
	end

end


class Segway < Vehicle

	def initial_value
		true
	end

	def speed
		20
	end

end

class Fast < Vehicle

	def speed
		100000000000000000098767487659865434253465960897542325434950689785946735674253849 ** 103
	end

end

segway = Segway.new

puts segway.is_cool

puts Fast.new.accelerate
