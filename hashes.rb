
#defining hash, keys, values to work on it trhough document
program = {
  :name => "",
  :age => "",
  :children => "",
  :decortheme => "",
}

#starting a loop to ask the infos about the user
loop do
p "whats your name?"
inputName = gets.chomp
p "whats your age?"
inputAge = gets.chomp
p "Number of children?"
inputChild = gets.chomp
p "Whats your decor theme?"
inputDecor = gets.chomp 
p "Are you done? (Type exit if you´re done)"
inputExit = gets.chomp 
#remember to link the the key as variables so I can assign users answers with a value 
program[:name] = inputName
program[:age] = inputAge
program[:children] = inputChild
program[:decortheme] = inputDecor
#give to the user the option to avoid the loop/finish the program
break if inputExit == "exit"

end
p "Please check your informations below"
#need to print all infos to the user review
p program

#-----------------------------------------------------------------------
#give the option to finish the program if the user agree with the infos
#i need to pay attention at the new answers alone inside the new bloack, so if the user dont change it will not update to blank answer 
p "Do you agree with the answers? If no what do you want to change?"
input = gets.chomp 
#-----------------------------------------------------------------------
#i´ll use the "start_with?" to give more options of input to the user
#testing the utility of the class change using the ".to_s" to see how can I control the kind of info i want in an answer
if input.start_with?("decor", "theme")
p "Whats your decor theme?"
inputDecor = gets.chomp 
program[:decortheme] = inputDecor.to_s

  elsif input.start_with?("name", "nick")
p "whats your name?"
inputName = gets.chomp
program[:name] = inputName.to_s

  elsif input.start_with?("age", "birth", "day")
p "whats your age?"
inputAge = gets.chomp
program[:age] = inputAge.to_s

  elsif input.start_with?("child", "kids")
p "Number of children?"
inputChild = gets.chomp
program[:children] = inputChild.to_s

else
  p "Thanks for your time!"
end
  
p program
    p "Thanks for your time!"
  
  