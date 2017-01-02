def Hamster
p "Whats the hamster name?"
name = gets.chomp
p "The name of the Hamster is #{name.to_s}"

p "Whats the volume of sleep from 1 to 10?"
volume = gets.chomp
p "The volume level of his sleeping is #{volume.to_i}"

p "Whats the fur color?"
color = gets.chomp
p "His fur color is #{color.to_s}"

p "What is the estimated age of the hamster"
age = gets.chomp

if age == ""
	age = nil
else
	age = age.to_i
		p "The hamster estimated age is #{age}"
end

p "whether the hamster is a good candidate for adoption (y/n)?"
adoption = gets.chomp
if adoption == "y"
  p "The hamster is a good candidate for adoption!"
else
  p "The hamster isnt a good candidate for adoption!"
end
end

Hamster()





