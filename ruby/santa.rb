class Santas

def initialize
	p "Initializing Santa instance ...".
	@gender = ""
	@ethnicity = ""
end

reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
age = 0

def speak
	p "Ho, ho, ho! Haaaappy holidays!" 
end

def eat_milk_and_cookies(cookie_type)
	p "That was a good #{cookie_type}!"
end
end

Noel = Santas.new
Noel.speak
Noel.eat_milk_and_cookies("donuts")





