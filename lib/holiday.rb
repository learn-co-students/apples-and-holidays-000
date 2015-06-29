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
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  all_supplies = []
  all_supplies << holiday_hash[:winter][:christmas] 
  all_supplies << holiday_hash[:winter][:new_years] 
  all_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  list = ""
  holiday_hash.each do |season, holiday|
    list << "#{season.to_s.capitalize}:\n"
    holiday.each do |holiday_name, holiday_assets|
      holiday_name = holiday_name.to_s.gsub('_',' ').split.collect(&:capitalize).join(' ')

      holiday_assets = holiday_assets.collect do |val|
        if val.size == 3
          val.upcase
        elsif val.split.size == 2
          arr = [] << val.split.collect(&:capitalize).join(' ')
          val = arr
        else
          val.capitalize
        end
      end.join(', ')
      list << "  #{holiday_name}: #{holiday_assets}\n"
    end
  end
  puts list
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end