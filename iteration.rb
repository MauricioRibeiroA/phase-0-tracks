
arr = [0, 1, 2, 3, 4, 5, 6]
arr1 = [0, 1, 2, 3, 4, 5, 6]
arr2 = [0, 1, 2, 3, 4, 5, 6, nil]
arr3 = [0, 1, 2, 3, 4, 5, 6]
arr4 = [0, 1, 2, 3, 4, 5, 6]
arr5 = [0, 1, 2, 3, 4, 5, 6]

hash = {
  :"1" => "one",
  :"2" => "two",
  :"3" => "three"
}



p "1) A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).".upcase
p "Original collection #{arr2}"
p "Array deletes the nil. good to control the infos submited in a form when you dont want nil."
p arr2.compact
p "Hash just keep numbers above four"
p arr.delete_if { |number| number<5 } 
#---------------------------------------------------------------------------
p "2) A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).".upcase
p "Original collection #{arr5}"

p "Array just keep the first number"
p arr5.first
p "Original collection #{hash}"
p "Hash filter and retrieve the value object corresponding to the key object"
p hash[:"1"]
#---------------------------------------------------------------------------
p "3) A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!".upcase
p "Original collection #{hash}"
p "Hash returns an array containing the values associated with the given keys, but also raises keyerror when one of the keys cant be found"
p hash.fetch_values(:"2")

p "Returns a new array that is a one-dimensional. Extract the elements from all others into a new array "
totalarr = [arr, arr1, arr2]
p totalarr. flatten

p "if you want to analyze all possible combinations for a group of numbers. "
p arr1.combination(4).to_a

#---------------------------------------------------------------------------
p "4) A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).".upcase
p "Original collection #{arr4}"
p "Array drops elements while the condition is true"
arr4.drop_while { |x| x<4 }




