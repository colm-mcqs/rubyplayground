words = []

def sortByHand(words)
  return words if words.size <=1

  loop do
    swapped = false
    0.upto(words.size-2) do |i|
      if words[i] > words[i+1]
        words[i], words[i+1] = words[i+1], words[i]
        swapped = true
      end
    end
    break unless swapped
  end

  words
end

puts 'BEGIN!!'
word = gets.chomp

while word != ''
  words.push(word)
  word = gets.chomp
end

puts words.sort
puts
puts 'Manual'
puts
puts sortByHand(words)
