require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_supplies[:winter][:christmas] << supply
  holiday_supplies[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, season_hash|
    puts season.to_s.capitalize! + ":"
    season_hash.each do |holiday, supplies|
      holiday_array = []
        holiday.to_s.split("_").each do |word|
          holiday_array << word.capitalize!
          holiday = holiday_array.join(" ")
        end
      puts "  #{holiday}: #{supplies.join(", ")}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, season_hash|
    season_hash.each do |holiday, supplies_array|
      holiday.select
      # supplies_array.each do |supply|
      #   if supply == "BBQ"
      #     array << holiday
      #   end
      # end
    end
  end
  array
end
