require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter][:christmas].each {|x| winter_supplies << x}
  holiday_hash[:winter][:new_years].each {|y| winter_supplies << y}
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
 holiday_hash.each do |seasons, holidays| 
    puts "#{seasons.capitalize}:"
    new_string = ""
      holidays.each do |holiday, supply| 
      string_holiday = holiday.to_s
      supply.each do |sup| 
        if new_string.length == 0 then new_string = sup
        else new_string += ", " + sup
        end
      end
      puts "  #{string_holiday.gsub("_"," ").split.map(&:capitalize).join(' ')}: #{new_string}"
      new_string = ""
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
 hot_dogs = []
   holiday_hash.each do |season, holidays| 
     holidays.each do |holiday, supplies| 
       supplies.each do |supply| 
         if supply == "BBQ"
           hot_dogs.push(holiday) 
         end
       end
     end
   end
 return hot_dogs
end







