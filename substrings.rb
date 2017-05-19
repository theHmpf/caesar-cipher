def substrings original_words, dictionary

  results = {}
  dictionary.each do |entry|
    original_words.split.each do |word|
      counter = 0
      word.scan(entry) {counter =+ 1}

      if counter > 0
        if results.has_key?(entry)
          results[entry] += counter
        else
          results[entry] = counter
        end
      end
    end
  end

  puts results

end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
