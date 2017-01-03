p "How many employees will beprocessed?"
trigger = 0 

varUser = gets.chomp.to_i
p varUser
until trigger == varUser 
  trigger += 1 

  
p "whats your name?"
  input = gets.chomp
if input == "Drake Cula" || "Tu Fang"
  name = false 
else
  name = true
end
  
p "How old are you?" 
	input = gets.chomp.to_i
p "What year were you born?"
	birth = gets.chomp.to_i
	testingAge = 2016 - birth
	p testingAge
if testingAge == input 
	  age = true
	else
	  age = false
end
	
p "Our company cafeteria serves garlic bread. Should we order some for you (y/n)?"
	input = gets.chomp
if input == "y"
    garlic = true
  else 
    garlic = false 
end 
  
p "Would you like to enroll in the company’s health insurance (y/n)?"
	input = gets.chomp
if input == "y"
    insurance = true 
  else
    insurance = false
end

if age && garlic || insurance
  p "Probably not a vampire."
  elsif !age && (garlic || insurance)
  p "Probably a vampire."
  elsif !age && !garlic && !insurance
  p "Almost certainly a vampire."
  elsif !name
  p "Definitely a vampire"
else
  p "Results inconclusive."
end

varUser1 = false

until varUser1

p "Name any allergies, one at a time"
allergies = gets.chomp

   if allergies == "sunshine"
    p "Definitely a vampire"
    varUser1 = true
    elsif allergies == "done"
    varUser1 = true
  else 
    varUser1 = false 
end
end

end

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."