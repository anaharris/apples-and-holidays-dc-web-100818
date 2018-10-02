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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = holiday_hash[:winter].values
  return winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  seasons = []
  holidays = []
  supplies = []
  
  holiday_hash.each do |season, holiday|
    cap_season = season.to_s
    seasons << cap_season.capitalize 
      holiday.each do |attribute, value|
      cap_holiday = (holiday.to_s).split
      holidays << (cap_holiday.capitalize).join(" ")
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  
end