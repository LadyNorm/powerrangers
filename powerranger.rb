class Person
	attr_accessor :name, :caffeine_level

	def initialize(name)
		@name = name
		@caffeine_level = 0
	end
	
	def drink_coffee(cups)
		@caffeine_level += cups
		puts "You drank #{cups} cups of coffee!  You now have #{caffeine_level} caffeine!"
	end

	def run
		puts "You ran away?  I thought you were a Power Ranger!"
	end

	def scream
		puts "AHHHHHH REAL MONSTERS!"
	end
end

class PowerRanger < Person
	attr_accessor :name, :strength, :color

	def initialize(name, color)
		@name = name
		@strenth = 0
		@color = color
		puts "It's morphin time! #{color.capitalize} Ranger!"
	end

	def push_ups(reps)
		@strength += reps
		puts "Your strength is now #{reps} higher, a total of #{strength}!"
	end

	def punch(being_punched)
		if @name.strength > 5
			@caffeine_level -= 10
			puts "#{being_punched} was somersaulted in to the air by your punch! Your caffeine level is now at #{caffeine_level}."
		else
			@caffeine_level -= 5
			puts "#{being_punched} screamed and ran away! Your caffeine level is now at #{caffeine_level}."
		end
	end

	def rest
	end
end

class EvilNinja
end