def apple_picker_with_select(fruit_list)
  
  fruit_list.select do |x|
  	
  		x == "apple"

 	 end

end


def apple_picker_with_collect(fruit_list)
 	
 	a_is_for_apples = fruit_list.collect do |x|

 		if x == "apple"
 			x
 		else

 		end
 	end
 	a_is_for_apples.compact
end