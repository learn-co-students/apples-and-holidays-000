require "pry"

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, stuff|
      if holiday == :new_years || :christmas
        stuff<<supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, stuff|
      if holiday == :memorial_day
        stuff<<supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
  answer = holiday_supplies[:winter][:christmas]
  answer2 = holiday_supplies[:winter][:new_years]
  answer + answer2
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    seasonStr = season.to_s.capitalize
    puts "#{seasonStr}:"
    holidays.each do |holiday, supplies|
      holidayArray = holiday.to_s.split("_")
      holidayArray.each do |word|
        word.capitalize!
      end
      holidayStr = holidayArray.join(" ")
      supplyList = supplies.join(", ")
      puts "  #{holidayStr}: #{supplyList}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  arrayOfHolidays = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          arrayOfHolidays<<holiday
        end
      end
    end
  end
  arrayOfHolidays
end







