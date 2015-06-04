def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {:winter=>{:christmas=>["Lights", "Wreath"], :new_years=>["Party Hats"]}}
  # holiday_hash
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




  holiday_hash[season][holiday_name]=supply_array
  return holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  arr=[]
  holiday_hash[:winter].each_value do |x|
    arr << x
  end
 
  return arr.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  i=0
  season=[]
  holiday_hash.each_key do |x|
    season[i]=x.to_s.capitalize+":"
    i+=1
  end

  a=[]
  j=0
  holiday_hash.each_value do |y|
 
      y.each_pair do |key, value|
        holiday=key.to_s.capitalize+": "
        holiday=holiday.gsub('_',' ')
        holiday=holiday.split.map(&:capitalize).join(" ")
    
        items= value.join(", ")
        
        final="  "+holiday+" "+items
   

        a[j]=final
        j+=1

      end
  end 

  allofit=""

  for m in 0..season.length
    allofit=allofit+ season[m].to_s+"\n" 
    if m==0 
      allofit=allofit+ a[0].to_s+"\n" 
      allofit=allofit+ a[1].to_s+"\n"
    else
      allofit=allofit+ a[m+1].to_s+"\n" 
    end
  end
  puts allofit.chomp.chomp

 



  

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"




  c=[]
  holiday_hash.each_value do |y|
    y.each_pair do |key, value|
      if value.include?("BBQ")
        c << key
      end
    end
  end
  return c




end