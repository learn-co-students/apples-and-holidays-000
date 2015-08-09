require "pry"

def apple_picker_with_select(fruit_list)
  fruit_list.select do |fruit| 
  	fruit == "apple"
  end
end

def apple_picker_with_collect(fruit_list)
  fruit_list.collect do |item| 
  	item if item == "apple"
  end.compact
end
