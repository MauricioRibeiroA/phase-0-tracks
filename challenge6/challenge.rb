class Game 
  
        attr_accessor :total_chances 
       attr_accessor :wrong_try
       attr_accessor :word
       attr_accessor :letter
       attr_accessor :when_user_right
       attr_accessor :blank_state
       attr_accessor :try_word
       attr_accessor :letter
        
    def initialize(word)
       @word = word
       @total_chances = word.length 
       @wrong_try = 0 
       @when_user_right = ""
     end

    def current_state(try_word)
    blank_state = ""
    @word.each_char { |letter| blank_state += (try_word.include?(letter))? letter : "_"}
    blank_state
    end
    
end