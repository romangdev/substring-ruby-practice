def substring(phrase, dictionary)
    arr = phrase.downcase.split(" ")
    arr.reduce(Hash.new(0)) do |total, word|
        dictionary.each do 
            |dict_word|    
            if word.include?(dict_word)
                total[word] += 1 
            end
        end
        total
    end
end

#check to ensure it works
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
check = substring("howdy partner, sit down! How's it going?", dictionary)
p check