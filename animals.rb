require_relative 'animal_module'

class Animal
attr_reader :has_heart
def initialize
	@has_heart = true
end
end


class Mammal < Animal
attr_reader :warm_blooded
	def initialize
	@warm_blooded = true 
	end 
end

class Amphibian < Animal 
	attr_reader :cold_blooded
	attr_reader :breathes_underwater
	def initialize
	@cold_blooded = true
	@breathes_underwater = true
	end
end

class Primate < Animal 
	attr_reader :num_legs
	def initialize
	@num_legs = 2
	end
end

class Bird < Animal 
	attr_reader :has_wings
	attr_reader :cold_blooded
	attr_reader :warm_blooded
	def initialize
	@has_wings = true 
	@cold_blooded = false
	@warm_blooded = true
	end
end

class Frog < Amphibian
	
end

class Bat < Mammal 
	include Flight
	attr_reader :has_wings

	def initialize
	@has_wings = true
	super
	end
end

class Parrot < Bird
	include Flight 
	attr_reader :can_talk
	def initialize 
		@can_talk = true
	super
	end
end 

class Chimpanzee < Primate

end

# module Flight
# 	# attr_reader :fly
# 	#def intitialize
# 	# 	@fly = "I'm a parrot, I'm flying"
# 	# end
# #def fly
# 	# 	puts "Im a parrot, Im flying!"
# #end
# end

# animal = Animal.new 
# amp = Amphibian.new 
# mam = Mammal.new 
# primate = Primate.new 
# froggy = Frog.new
# puts froggy.cold_blooded,froggy.breathes_underwater
chimpy = Chimpanzee.new
puts "Chimpy's leg count: #{chimpy.num_legs}"

batty = Bat.new 
puts batty.fly
puts "Batty is warm blooded: #{batty.warm_blooded}"

polly = Parrot.new
puts polly.fly
puts "Why?... Because I have wings : #{polly.has_wings}"
puts "I'm polly the prude parrot, no one likes me because I can talk: #{polly.can_talk}"
