require 'byebug'

def get_first_name_of_season_winner(data, season)
  data.fetch("#{season.to_sym}").first["name".to_s].split(" ").first
end

def get_contestant_name(data, occupation)
  contestant = ''
  data.keys.detect do |top_keys|
    contestant = data[top_keys].detect { |elem| elem.has_value?(occupation) }
  end
  contestant['name']
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each_key do |top_level_keys|
   data[top_level_keys].each { |elem| counter += 1 if elem.has_value?( hometown ) }
  end
  counter
end

def get_occupation(data, hometown)
  contestant = ""
  data.keys.detect do |top_keys|
    contestant = data[top_keys].detect { |elem| elem.has_value?(hometown) }
  end
  contestant['occupation']
end

def get_average_age_for_season(data, season)
  age_array = data.fetch(season).map{ |obj| obj['age'].to_f }
  avg_age = age_array.reduce(:+) / age_array.length
  avg_age.round
end
