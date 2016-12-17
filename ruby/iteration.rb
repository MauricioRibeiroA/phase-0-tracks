
#array structure 
arr = ["a", "b", "c", "d", "e"]
newArr = []
p "this is the array before any change"
arr.each do |letters|
  p letters 
  newArr << letters.upcase
end
p "this is the first change of the array with the .each"
p newArr
#------------------------------------------------------
#hash structure (keys and values)

macronutrients = {
	:carbs => "pasta",
	:protein => "meat",
	:fat => "peanut"
}

p "this is the hash iteration with keys and values."
macronutrients.each { |macro, food| p "If you´re looking for #{macro}, try to it some #{food}" }

#-----------------------------------------------------
#if I use the "map bang", with the exclamation point in the first one, it change all other arrays. That´s why in this example I can only in the last example
p "this is the array before any change"
arr.map do |letters|
  p letters
  letters.next
 end 
p "this is the array after the map method non destructive"
p arr

#-----------------------------------------------------
p "this is the array before any change"
arr.map! do |letters|
  p letters
  letters.next
 end 
p "this is the array after the map method destructive"
p arr