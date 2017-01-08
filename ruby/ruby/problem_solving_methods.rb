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



def fibonacci(x)
  arr = [0, 1]
  y = x - 2 
  y.times do 
  sum = arr[-2] + arr[-1]
  arr << sum 
          end
            return arr
end 

new = fibonacci(100)
p new

=begin
#I need to limit the loop with the same size of the array. I can use ".length -1" for that.
#The loop should take turns among the numbers (try to use iterate), always considering the main "x" and the one after "x+1". 
#Check a condition of true or false. If true change the main number with the one after and keep doing this until condition false. When false don't finish, but take the next number and do the same until condition false.
#Iterate + loop will give me the condition to check each number until all "x" are in the right place.
=end
def method_sort(arr)
  size = arr.length
  loop do
    trigger = false
    (size-1).times do |x|
      if arr[x] > arr[x+1]
        arr[x], arr[x+1] = arr[x+1], arr[x]
        trigger = true
      end
    end

    break if not trigger
  end

  arr
end

method_sort([1, 3, 6, 2, 4, 5])