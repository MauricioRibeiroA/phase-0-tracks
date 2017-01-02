#First of all I need to start a class. After that I need to figure out what kind of “behaviors” I want, what kind of “attributes” I want to declare at the initialize method and be aware of what informations I’ll need to pass outside of the class and if I want to update or just read those informations.
class Game 
       attr_accessor :total_chances 
       attr_accessor :wrong_try
       attr_accessor :word
       attr_accessor :letter
       attr_accessor :right_guess
       attr_accessor :placeholder
       attr_accessor :try_word
       attr_accessor :char
       
#One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.  As the instructions asked for a computer software, I can’t use the gets.chomp for the user. Instead of that I’ll try to use the def initialize to get the word to guess at the drive code. 
     def initialize(word)
       @word = word
       @total_chances = word.length 
       @wrong_try = 0 
       @right_guess = ""
     end
  
#The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
#For this instruction I have some steps to accomplish: First I need to separate each letter of the word, so I can compare the letter input with my letters stored. I’ll work in blocks and iterate from each_char.  
#Until the player find out the letter with the include?() I can use the “_” as a symbol and then change after the player find out the correct letter.  It will save me time instead of work with the index and test everytime the correct position of the letter. 
    def get_placeholder(try_word)
    placeholder = ""
    @word.each_char { |char| placeholder += (try_word.include?(char))? char : "_"}
    placeholder
    end
    
   
    #@total_chances = @word_to_guess.length
    #def guess(letter)
    #if 
end
player = Game.new("mauricio") 
player.get_placeholder(" ")

#Should work with loops until the end of the word.length or the player guess the word. 
while true
#The if case statements should support first of all two important rules: only downcase letters and one letter per try. Should be easy if I chance the input of the player at the beginning so it saves time to don’t need to create an if statement for that and for the how many letters to input at the same time I can use the input. Length = 1.
  print "Give it a shot and try a letter!\nGood luck because you only have #{player.total_chances - player.wrong_try} chances left:"
# The control flow should contemplates some steps: 
#1. if the letter is inside the word.
#1.1  Is that repeated? If true don’t count as a try + show the current state of the word
#1.2  Is that a new one? If true count as a try and add to the word + show the current state of the word
#2. if the letter isn’t inside the word
#2.1 Tell the player that he didn’t guess + count as try  + show the current state of the word
#The user should get a congratulatory message if they win, and a taunting message if they lose.

  char = gets.chomp.downcase
  
  if player.word.include? char || char.length > 1 || char.class.to_s != "String"

    if(player.right_guess.include? char)
      puts char + " you already said this one before."
      puts "Keep going >> " + player.get_placeholder(player.right_guess)
  
      
    else
      player.right_guess += char
      placeholder = player.get_placeholder(player.right_guess)

      puts "Congrats! " + placeholder
    end

    unless placeholder.include? "_"
      puts "You did it buddy!!! You escaped from being hanged"
      
      break
    end
  else
    puts "Unfortunately the secret word doesn't have the #{char}"
    player.wrong_try += 1

    if (player.wrong_try == player.total_chances)
      puts "Sorry buddy, but you lost."
      break
    else
      puts "Keep going >> " + player.get_placeholder(player.right_guess)
    end
  end

end