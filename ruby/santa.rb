class Santa 
  attr_reader :age, :ethnicity 
  attr_accessor :gender, :reindeer_ranking

       def initialize(gender, ethnicity)
         p "Initializing Santa instance..."
         @gender = gender
         @ethnicity = ethnicity
       end

       def speak
         p "Ho, ho, ho! Haaaappy holidays!"
       end

       def eat_milk_and_cookies(cookie_type)
         p "That was a good #{cookie_type}!"
       end

    @age = 0 
# 3 attribute-changing methods
       def celebrate_birthday(age)
        @age = age 
        p "Santas have #{age} year"
       end 

       def get_mad_at(reindeer_name)
       @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
          @reindeer_ranking = reindeer_ranking
              reindeer_ranking.insert(-1,reindeer_ranking.delete_at(reindeer_ranking.index(reindeer_name))) 
       end 

end

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
mauricio = Santa.new("male", "black")
mauricio.speak
mauricio.eat_milk_and_cookies("oreo")
mauricio.celebrate_birthday(1)
mauricio.get_mad_at("Rudolph")
mauricio.gender = "male"
"#{mauricio.gender} is the gender of one of the many santas!"


#Release 4 -----------------------------------------------------------------------------------------------------
class Santa
  
  def initialize(gender, ethnicity, age_arr)
    p "starting a new santa claus"
    @gender = gender 
    @ethnicity = ethnicity
    @age_arr = age_arr
  end

end 
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
age_arr = []
(1..140).each do |age|
  age_arr << age
end

santas = []

santas << Santa.new(gender.sample, ethnicity.sample, age_arr.sample)

p santas





