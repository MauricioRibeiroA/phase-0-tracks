
#Release 0
#How might you design a Puppy class? What sorts of characteristics and behavior might a Puppy class involve? Using a format similar to the one we used for Eyelashus Adorableus, come up with some characteristics and behavior for a Puppy class. Use comments to add your class design to phase-0-tracks/ruby/puppy.rb.
=begin 
CLASS = Dogs 
SPECIES = rottweiller
Eyelashus Adorableus

CHARACTERISTICS 
Size: a string 
Friendly: a boolena
Years: an integer 
Name: a string 
Color: a string

BEHAVIOR 
Jump
Bark
Bites
=end 

#Release 1
class Puppy
end

Puppy.methods

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

spot.class
duchess == fido
fido.instance_of?(Array)
fido.instance_of?(Puppy)
spot.play_dead

#Release 2

str = String.new
str.length
str.empty?
str += "huh."
greeting = String.new("hello")
greeting.length
greeting.upcase
 
