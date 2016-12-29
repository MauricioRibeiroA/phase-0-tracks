$new_array_of_integers = []
array_of_integers = [42, 89, 23, 1, 24, 47, 35]


def search(arr, number_to_search_for)
x = 0
until number_to_search_for == arr[x]
$new_array_of_integers << arr[x]
x += 1 

end 
$new_array_of_integers.length;
end 

search(array_of_integers, 24)



#arr.length = arr(100)

#sum the last to elements

# add the new number into the arr

arr = [0, 1, 1, 2, 3, 5]

sum = arr[-2] + arr[-1]

arr << sum 

p arr

