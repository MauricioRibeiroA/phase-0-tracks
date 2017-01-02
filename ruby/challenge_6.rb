#def initialize 
words = ["Brasil", "USA", "London"]
wrong_try = 0
right_guess = ""
#end 
word = words[rand(words.length) - 1].downcase!
total_chances = word.length
arr_guess = []


def get_placeholder(word_to_guess, try_word)
  placeholder = ""
  word_to_guess.each_char { |letter| placeholder += (try_word.include? letter)? letter : "_"}
  placeholder
end


puts 'Guess what is:'+ get_placeholder(word, "")

while true
  print "Enter word [#{total_chances - wrong_try} chances left]:"

  letter = gets.chomp
  arr_guess = [] << letter

  
  if word.include? letter

    if(right_guess.include? letter)
      
      puts 'Try another: ' + get_placeholder(word, right_guess)
        if arr_guess.include? letter
      p "You already tried this word"
    end
    else
      right_guess = right_guess + letter
      placeholder = get_placeholder(word, right_guess)

      puts 'Great! ' + placeholder
    end

    unless placeholder.include? "_"
      puts "WELL DONE!! YOU SURVIVED"
      puts "survived"
      break
    end
  else
    puts "Sorry! The word dosen't contains '#{letter}'"
    wrong_try += 1

    if (wrong_try == total_chances)
      puts "YOU HANGED!"
      puts "hanged"
      break
    else
      puts 'Try another: ' + get_placeholder(word, right_guess)
    end
  end

end