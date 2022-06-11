def substring(phrase, dictionary)
    arr = phrase.downcase.split(" ")
    hash = {}
    arr.each do |phrase_word|
        dictionary.each do 
            |dict_word| 
            if phrase_word.include?(dict_word)
                if hash[dict_word] == nil
                    hash[dict_word] = 0
                end
                hash[dict_word] += 1
            end
        end
    end
    hash
end

# checking to see if it's working
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
check = substring("howdy partner, sit down! How's it going?", dictionary)
p check