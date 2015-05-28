def apple_picker_with_select(fruit_list)
  fruit_list.select { |fruits| fruits == "apple"} 

  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just has apples in it
end

def apple_picker_with_collect(fruit_list)
  # fruit_list will look something like: ["apple", "banana", "apple"]
  # you want to return an array that just the apples, just like the 
  # challenge above
  result = fruit_list.collect { |item| item if item == "apple" }
  result.delete(nil)
  result
end