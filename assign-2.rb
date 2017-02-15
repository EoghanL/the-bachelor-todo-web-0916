require 'pry'
def transform(candies)
  final_array = []
    candies.delete_if {|element| !(element.is_a?(String))}
    candies.each do |candy|
      if !(candy.include?(" "))
        final_array << candy.capitalize!
      else
        candy.split.each { |word| final_array << word.capitalize }
      end
    end
end



if candy.include?(' ')
  candy.split.each { |word| word.capitalize! }
else
  candy.capitalize!
end

def nameFix(candies)
 candies.keep_if{ |element| element.is_a?(String) }
 candies.map do |candy_names|
   if candy_names.include?(' ')
     candy_names.split(' ').map { |word| word.capitalize! }.join(' ')
   else
     candy_names.capitalize
   end
 end
end
