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
  holiday_hash.each do |k, v|
    v.each do |x,y|
       if x == :fourth_of_july
         return y.last
       end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash.each do |key, value|
    value.each do |k, v|
      if key == :winter
        v << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  holiday_hash.each do |key, value|
    value.each do |k, v|
      if k == :memorial_day
        v << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |key, value|
    return value.values.flatten
  end
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |key, value|
    puts "#{key.capitalize}:"
    value.each do |k, v|
      holiday = k.to_s
      if  /_/.match(holiday)
        formatted_key = holiday.gsub!(/_/, " ")
        formatted_key = formatted_key.gsub!(/\w+/, &:capitalize)
      else
        formatted_key = holiday.capitalize
      end
      holiday = "  #{formatted_key}:"
      if v.length > 1
        supplies = v.join(", ")
        # puts "#{holiday} #{supplies}"
      else
        supplies = v.join
        # puts "#{holiday} #{supplies}"
      end
      puts "#{holiday} #{supplies}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  all_bbq_days = []
  holiday_hash.each do |key, value|
    value.each do |k, v|
      if v.include?("BBQ")
        all_bbq_days << k
      end
    end
  end
  return all_bbq_days
end







