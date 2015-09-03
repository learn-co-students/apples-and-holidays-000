require 'pry'
def apple_picker_with_select(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just has apples in it

  fruit_list.select {|fruit| fruit == "apple"}
  
end

def apple_picker_with_collect(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just the apples, just like the 
  # challenge above



  ###### => WORKS WORKS WORKS
  # result_of_collecting = []
  # fruit_list.collect  do |fruit|
  #   if fruit == "apple"
  #     result_of_collecting << fruit
  #   end
  # end
  # result_of_collecting
  ####################
  my_fruits = fruit_list
  result = my_fruits.collect { |item| item if item == "apple" }
  result.compact

  # result = fruit_list.collect {|fruit| fruit if fruit == "apple"}
  # #binding.pry
  # resultres
  
  #result_of_collecting.collect {|fruit| fruit == "apple"}
  #binding.pry

end

