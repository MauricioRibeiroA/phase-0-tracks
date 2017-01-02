=begin 
module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    p words + "!!!" + " :("
  end
  def self.yelling_happily(words)
   p words + "!!!" + " Have a nice day."
  end

end

Shout.yell_angrily("I'm hungry")

Shout.yelling_happily("Hi")
=end 


module Shout

	def yell_angrily(words)
		p words + "!!!" + " :("
	end

class Bird
	include Shout
end

class Parrot
	include Shout
end

bird = Bird.new
bird.yell_angrily("i'm singing in the rain!")

parrot = Parrot.new
parrot.yell_angrily("give me food!")

end

