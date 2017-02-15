def scramble(sentence)
  letter_array = []
  final_str = ""
  sentence.split(" ").each do |word|
    if !(word.length <= 1)
      final_str = word[0] + word.split("")[1..-2].shuffle.join + word[-1]
      letter_array << final_str
      final_str = ""
    end    ## you can use a range modifier on the split method!!!
    ## scrambled = word_to_scrambe[0] + word_to_scrambe.split("")[1..-2].shuffle.join + word_to_scrambe[-1]
   end
   letter_array.join(" ")
end
