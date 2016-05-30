require 'pry'

def second_supply_for_fourth_of_july holiday_hash
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays holiday_hash, supply
  holiday_hash[:winter].each {|holiday, supplies| supplies << supply}
end
 

def add_supply_to_memorial_day holiday_hash, supply
  holiday_hash[:spring][:memorial_day] << supply 
end

def add_new_holiday_with_supplies holiday_hash, season, holiday_name, supply_array
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies holiday_hash
  holiday_hash[:winter].values.flatten  
end

def all_supplies_in_holidays holiday_hash
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, supplies|
      holiday = holiday.to_s
      if holiday.chars.include? "_"
        holiday =  holiday.split("_").collect do |word|
          word.capitalize
        end
        holiday = holiday.flatten.join(" ")
      else
        holiday = holiday.capitalize
      end
      puts "  " + holiday  + ": #{supplies.join(', ')}"
    end  
  end
end

def all_holidays_with_bbq holiday_hash
  have_bbq = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include? "BBQ"
        have_bbq << holiday
      end
    end
  end
  have_bbq
end







