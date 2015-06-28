def apple_picker_with_select(fruit_list)
  fruit_list.select do |x|
    x == "apple"
  end
end

def apple_picker_with_collect(fruit_list)
  apples_new = fruit_list.collect do |x|
    if x == "apple"
    x
     end
  end
  return apples_new.compact!
end
