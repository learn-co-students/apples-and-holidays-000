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
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday , decor|
        decor << supply
      end
    end
  end 
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday , decor|
        if holiday == :memorial_day
          decor << supply
        end
      end
    end
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array = []

  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |hol, decor|
        i = 0
        while i < decor.length
          array << decor[i]
          i+=1
        end
      end
    end
  end

  return array
  
end

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
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each_pair do |season, holidays|
    puts "#{season.capitalize}:"

    holidays.each_pair do |holiday, decor|
      holiday  = holiday.to_s.split('_').map(&:capitalize).join(' ')

      decor = decor.join(', ')

      puts "  #{holiday}: #{decor}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []

 holiday_hash.each do |season, holiday|
    holiday.each do |holiday , decor|
      i = 0
      while i < decor.length
        if decor[i] == "BBQ"
          array << holiday
        end
        i+=1
      end
    end
  end

  return array

end






