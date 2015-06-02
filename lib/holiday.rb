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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to either the
  # Christmas or the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season].store(holiday_name, supply_array)
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_supplies = holiday_hash[:winter][:christmas].collect{|x| x}
  all_supplies << holiday_hash[:winter][:new_years].collect{|x| x}
  all_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |key,value|
    newkeystring = key.to_s
    newkeystring = newkeystring.gsub("_"," ").split.map(&:capitalize).join(' ')
    puts "#{newkeystring}:"
      holiday_hash[key].each do |holiday, supply|
        holidaystring = holiday.to_s
        holidaystring = holidaystring.gsub("_"," ").split.map(&:capitalize).join(' ')
        string = supply.join(", ")
        puts "  #{holidaystring}: #{string}"
      end
  end  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  all_bbqs = []
  holiday_hash.each do |season,holiday|
    holiday_hash[season].each do |holiday2, supply|
       supply.each do |x|
        if x == "BBQ"
          all_bbqs << holiday2
        end
       end
    end
  end
  all_bbqs
end