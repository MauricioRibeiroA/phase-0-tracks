# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

def list(words)
    arr = words.split(" ")
    hash_list = {}
    arr.each {|key| hash_list[key] = 0}
    return hash_list
end

new_list = list("carrots apples cereal pizza")

new_list

def add_itens(new_list1, item_name, opt_quantity = 0)
	new_list1[item_name] = opt_quantity
end 
add_itens(new_list, "banana") 
add_itens(new_list, "grapes", 1) 
add_itens(new_list, "pizza", 1) 

p new_list

def delete_itens(new_list2, item_name)
	new_list2.delete(item_name)
end

delete_itens(new_list, "grapes")

p new_list

def update_itens(new_list1, item_name, opt_quantity)
	new_list1[item_name] = opt_quantity
end 
update_itens(new_list, "pizza", 5) 
#remember to dont leave optional quantities because if you dont change the value it gonna update to the default value on
require "pp" 
pp new_list


