
p "Whats the first number?"
x = gets.chomp.to_i
p "Whats the second number?"
y = gets.chomp.to_i

def calculator_method(op, a, b)
  a.send(op,b)
end
p calculator_method("-", x, y)
p calculator_method("+", x, y)
p calculator_method("*", x, y)
p calculator_method("/", x, y)
#-------------------------------------------------------------

p "Welcome to the Calculator 2.0. The robot that can handle with all operations for you!"

p "What calculation you want me to do?"
userInput = gets.chomp 
operation = userInput.split(" ")
#I have difficult to use the operation.each { |arguments| x = operation[0].to_i ... }
x = operation[0].to_i
op = operation[1]
z = operation[2].to_i

def calculator_method(op, a, b)
  a.send(op,b)
end
p calculator_method(op, x, z)
#----------------------------------------------------------------
condition = false 

until condition
p "Welcome to the Calculator 2.0. The robot that can handle with all operations for you!"

p "What calculation you want me to do?"

userInput = gets.chomp 
   if userInput == "done"
  condition = true
else
operation = userInput.split(" ")
x = operation[0].to_i
op = operation[1]
z = operation[2].to_i

      def calculator_method(op, a, b)
   p a.send(op,b)
      end

 
calculator_method(op, x, z)
    end
end

#--------------------------------------------------------------------
condition = false 
#must be before the loop, so i dont create a new array all the times 
historyc = [] 
resultsHash = {}
returnArray = []
until condition

p "Welcome to the Calculator 2.0. The robot that can handle with all operations for you!"

p "What calculation you want me to do?"

userInput = gets.chomp 

    if userInput == "done"
      condition = true
    else
  
  operation = userInput.split(" ")
  x = operation[0].to_i
  op = operation[1]
  z = operation[2].to_i

   def calculator_method(op, a, b)
     resultOfMethod = a.send(op,b)
     return resultOfMethod
   end
   
  lastChance = calculator_method(op, x, z)

  
  historyc << userInput
  returnArray << lastChance.to_s
  
 trigger = 0 
 while trigger < historyc.length
        historyc.each do |key| 
          resultsHash[key] = returnArray[trigger]
        trigger +=1
 end 
 end

end

 end
p resultsHash
p "calculations performed:" + " " + resultsHash.length.to_s
#-------------------------------------------------------------------
