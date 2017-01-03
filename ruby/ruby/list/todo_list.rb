class TodoList
  attr_accessor :array, :new_items, :item, :x

  def initialize(array) 
    @array = array 
    @new_items = new_items 
    @item = item  
    @x = x.to_i
  end 

  def get_items 
    p array
  end

  def add_item(new_items)
    array << new_items
  end

  def delete_item(item)
    array.delete(item) 
  end 

  def get_item(x)
    p array[x]
  end    
end  