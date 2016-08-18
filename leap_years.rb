puts 'Input a starting year:'
startYr = gets.chomp
puts 'Input an ending year:'
endYr = gets.chomp
puts ''

while startYr.to_i <= endYr.to_i
  if startYr.to_f%400 == 0
    puts startYr
  elsif startYr.to_f%100 ==0
  elsif startYr.to_f%4 == 0
    puts startYr
  end
startYr = startYr.to_i+1
end
