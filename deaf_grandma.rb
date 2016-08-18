def grandma()
  puts "HELLO, SONNY!"
  reply = ''
  while (reply != "BYE!")
    reply = gets.chomp
    while(reply != reply.upcase)
      puts "WHAT?"
      reply = gets.chomp
    end
    year = rand(1930..1951)
    puts "NO, NOT SINCE #{year.to_s}"
  end
  puts "BYE, SONNY!"
end

grandma()
