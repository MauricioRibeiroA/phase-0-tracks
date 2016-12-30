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
#------------------------------------

module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
end

class Plane
end