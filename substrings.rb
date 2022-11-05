def substrings(substrings_to_find, dictionary)
    substrings_to_find.reduce(Hash.new(0)) do |hash, substring_word|
        dictionary.each do |dictionary_word|
            if substring_word.include?(dictionary_word)
                hash[dictionary_word] += 1
            end
        end
        hash
    end
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts "Enter the word to check"
substrings_to_find = gets.chomp.downcase.split(" ")
puts "#{substrings(substrings_to_find, dictionary)}"