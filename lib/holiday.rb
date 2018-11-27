require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |seasons, holidays_and_supplies|
    season_string = seasons.to_s
      cap_season = season_string.capitalize!
        puts "#{cap_season}:"
        
    holidays_and_supplies.each do |holidays, supplies|
      puts "#{holidays.to_s.split('_').map {|holiday| holiday.capitalize}.join(' ')}: #{supplies.join()}"
    end
  
    #holidays_and_supplies.each do |holidays, supplies|
      #binding.pry
      #holiday_string = holidays.to_s
      #holiday_array = holiday_string.split
      #holiday_array.each do |holiday|
       # cap_holiday = holiday.capitalize!
        #puts "#{cap_holiday}: "
        
      #end
        
      #supplies.each do |supply|
       # cap_supply = supply.capitalize!
        #puts "#{cap_supply}"
    #end
        
      end 
    end
  end



  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:00
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







