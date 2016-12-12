# ask the user the method to hide the password
p "Hey Sherlock Holmes! Which def method do you prefer? decrypt or encrypt?"
userAnswer = gets.chomp 
#ask the user the pasword
p "Say a password"
password = gets.chomp


#Write the first def method: 
#1º The answer must have the same number of letters as the original word, so I should work with the loop and the size of the word;
#2º It should pick up the original letters and add one more, so the result printed will be the next one. For that is possible to use the built-in method called ".next";
#3º It should be called in a function, so must have a def method to call.
def encrypt(string)
  trigger = 0
  while trigger < string.length
  p string[trigger].next
  trigger += 1
  
 end
 return string
end

#encrypt("abc")
#encrypt("zed")

#Write the second def method: 
#1º The answer must have the same number of letters as the original word, so I should work with the loop and the size of the word;
#2º AS I dont have a built-in method to going back I must interpret as a mathematical function to be able to write unknowns derived from other unknowns using the built-in methods that I have. First I need to figure out how to identify what is the index of each letter. After then I should decrease one one letter (remember to work with ystems of the same magnitude, integers). After that I should convert to the new letter using another built-in method; 
#3º It should be called in a function, so must have a def method to call.
def decrypt(string)
   trig = 0
   while trig < string.length

    new = ("abcdefghijklmnopqrstuvwxyz".index(string[trig])-1)

    new1 = "abcdefghijklmnopqrstuvwxyz"[new]

    p new1
  trig += 1
  end 
end

#decrypt("bcd")
#decrypt("afe")

# Write the if clauses according to the user´s choice
if userAnswer == "decrypt"
  decrypt(password)
  elsif userAnswer == "encrypt"
  encrypt(password)
end


#decrypt(encrypt("swordfish"))