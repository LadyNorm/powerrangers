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

	def punch(being_punched)
		if @name.strength > 5
			@caffeine_level -= 10
			puts "#{being_punched} was somersaulted in to the air by your punch! Your caffeine level is now at #{caffeine_level}."
		else
			@caffeine_level -= 5
			puts "#{being_punched} screamed and ran away! Your caffeine level is now at #{caffeine_level}."
		end
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

	def rest(hours)
		@strength += (hours/2.0)
		puts "After resting for #{hours} hours, your strength is now at #{strength}!"
	end

	def use_megazord
		if @strength > 5000
			puts "You pull out your megazord, the Evil Ninja sees that he will never defeat you, soils his pants, and offers you his first and second born children."
		else
			@strength -= 10
			puts "You fool, you must have a strength level of at least 5000 to use the megazord.  Lose 10 strength for even trying.  Your strength is now at #{strength}."
	end
end

class EvilNinja < Person
	attr_accessor :strength, :evilness

	def initialize(name)
		@name = name
		@strength = 0
		@evilness = 0
	end

	def cause_mayhem(victim)
		victim.caffeine_level = 0
		puts "The Evil Ninja has struck again!! #{victim.name} now has NO CAFFEINE!  Oh the humanity....."
	end
end