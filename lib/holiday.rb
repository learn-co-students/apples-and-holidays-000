require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

  #MY EASY WAY TO GET TEST TO PASS
  #hard coded would be: (just to get it to pass at first)
  # result = holiday_hash[:summer][:fourth_of_july][1]
  # result

  #HARDER WAY WITHOUT HARD CODING AS ABOVE.

  #take argument(holiday_hash).each
  holiday_hash.each do |seasons, holidays|      #go through seasons
    if seasons == :summer                       #only want the summer
      holidays.each do |key, value|             #go through each holiday
       value.each_with_index do |supply, index| #go through supplies
          if index == 1
           return supply
          end
        end
      end
    end
  end

  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays

  holiday_hash.each do |seasons, holiday|       #go through seasons
    if seasons == :winter                       #only want the winter
      holiday.each do |key, supplies|           #go through each holiday
          supplies << supply                    #add supply to supplies
      end
    end
  end

  
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
    holiday_hash.each do |seasons, holiday|
      if seasons == :spring
        holiday.each do |key, supplies|
          supplies << supply
        end
      end
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
    holiday_hash.each do |seasons, holiday|     #go through seasons
    if seasons == season                         #if equal to season argument  
      holiday_hash[seasons][holiday_name] = supply_array  #adds holiday key and supply array
    end
  end
  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
supplies_array = []
  holiday_hash.each do |seasons, holiday| #go through seaons
    if seasons == :winter 
      holiday.each do |key, supplies|
        supplies_array << supplies #put all supplies into an array
      end
    end
  end

  supplies_array.flatten #flatten array
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
#   Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# Fall:
#   Thanksgiving: Turkey
# Spring:
#   Memorial Day: BBQ

  holiday_hash.each do |seasons, holiday| #go through seasons
    puts "#{seasons.capitalize}:"
    holiday.each do |key, supplies|
      holiday_supplies = "  #{key}: #{supplies.join(", ")}"
      holiday_supplies.gsub!('_',' ')
      puts "  " + titleize(holiday_supplies)
    end
      
      #titleize(holiday_supplies)
  end
end


def titleize(string_to_titleize)
  #MY OWN METHOD
  #takes in string and titleizes it.
  
  #used the ternary operator '?'
  #if word is all CAPS then leave it all caps (ie: BBQ)
  result = string_to_titleize.split.map {|str| str != str.upcase ? str.capitalize : str}
  result.join(" ")
  
end




def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  result = []
  holiday_hash.each do |seasons, holiday|
    holiday.each do |key, supplies|
      if supplies.include?("BBQ")
        result << key
      end
    end
  end
  result

end







