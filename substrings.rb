def substrings (string, dictionary)
  substrings_hash = Hash.new(0)
  strings = string.downcase.split(/\W/)
  strings.each do |word|
    dictionary.each do |substring|
      substrings_hash[substring] +=1 if word.include? substring
    end
  end
  substrings_hash
end

dictionary = ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit']
puts substrings('below', dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)