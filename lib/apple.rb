def apple_picker_with_select(fruit_list)
  fruit_list.select do |x|
    x == "apple" ? x : nil
    
  end
end

def apple_picker_with_collect(fruit_list)
  new_fruit_list = fruit_list.collect do |x|
    if x == "apple"
      x
    end
  end
  return new_fruit_list.compact!
end