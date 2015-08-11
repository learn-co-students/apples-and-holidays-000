def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter].each_key {|key| holiday_hash[:winter][key] = supply}
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to either the
  # Christmas or the New Year's arrays
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each_key do |saison|
    if saison == season
      holiday_hash[season][holiday_name] = supply_array
    end
  end
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  array = Array.new
  holiday_hash[:winter][:christmas].each {|supplies| array.push(supplies)}
  holiday_hash[:winter][:new_years].each {|supplies| array.push(supplies)}
  return array
  # return an array of all of the supplies that are used in the winter season
end

def all_supplies_in_holidays(holiday_hash)
line = ""
  holiday_hash.each do |season, holiday| 
    line += season.to_s.capitalize + ":"
      holiday.each do |day, supply|
        line += day.to_s.capitalize + ":" 
        supply.each do |supply| 
          line+= supply.to_s + " "
        end
      end
    end
    puts line

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
end

def all_holidays_with_bbq(holiday_hash)
  bbqs_array = []
  holiday_hash.each do |season, holiday| 
    holiday.each do |day, supplies| 
      supplies.each do |supply| 
        if supply == "BBQ"
          bbqs_array.push(day) 
        end
      end
    end
  end
return bbqs_array
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end

#Here