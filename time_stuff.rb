def one_billion_seconds
  birth_time = Time.mktime(1980, 3, 6, 12, 50, 55)
  billion_seconds_old = birth_time + 1000000000
  puts billion_seconds_old
end

def happy_birthday
  puts "what year were you born?"
  year = gets.chomp
    puts "what month were you born (numerical)?"
    month = gets.chomp
  while ((month.to_i < 1) or (month.to_i > 12))
    puts "Please enter month as a number!"
    month = gets.chomp
  end
  puts "what day were you born?"
  day = gets.chomp

  birth_date = Time.mktime(year, month, day)
  years_old = (Time.new - birth_date)/(60*60*24*365)
  puts

  years_old.to_i.times do
    puts 'spank'
  end
end

happy_birthday()
