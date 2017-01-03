p "whats your name"
str = gets.chomp.downcase
  str = str.split("") 

def vowel_adv(str)
  vowels = ["a", "e", "i", "o", "u"]   
  consons = ["b", "c", "d", "f", "g", "h", "j","l","m","n","p", "q", "r", "s", "t", "v", "x"]   
  

  
  
  str_new = str.map do |char| 
    
    if vowels.include?(char)   
      
      vowels.rotate(1)[vowels.index(char)]     
      
      else consons.include?(char)    
        
        consons.rotate(1)[consons.index(char)]     
    
      end   
     
    end   
     str_new.join 
  end 
  
  vowel_adv(str)