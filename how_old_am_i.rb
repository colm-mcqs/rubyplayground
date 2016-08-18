def how_old(seconds)
  seconds=seconds.to_f
  minutes=seconds/60.0
  hours=minutes/60.0
  days = hours/24.0
  years = days/365.0
  yr_remainder = years%1
  days_yr = yr_remainder*365
  days_remainder = days_yr%1
  puts "You are #{yr_remainder} years old"
end

how_old(1246000000)
