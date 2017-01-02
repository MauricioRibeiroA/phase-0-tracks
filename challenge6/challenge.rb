class Game 
  
       attr_accessor :total_chances 
       attr_accessor :wrong_try
       attr_accessor :word
       attr_accessor :letter
       attr_accessor :right_guess
       attr_accessor :placeholder
       attr_accessor :try_word
       attr_accessor :char
        
     def initialize(word)
       @word = word
       @total_chances = word.length 
       @wrong_try = 0 
       @right_guess = ""
     end

    def get_placeholder(try_word)
    placeholder = ""
    @word.each_char { |char| placeholder += (try_word.include?(char))? char : "_"}
    placeholder
    end
    
end