def clock &block
  hours_today = Time.now.hour
  if hours_today > 12
    hours_today -= 12
  end
  
  hours_today.to_i.times do
    block.call
  end
end

clock do puts 'DONG!' end
