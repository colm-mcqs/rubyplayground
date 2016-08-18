def hours_in_year(years)
  if years < 2
    year_text = "year"
  else
    year_text = "years"
  end
  days = years * 365.0

  puts "there are #{days.round} days in #{years.round} #{year_text}"
  hours = days * 24.0
  puts "there are #{hours.round} hours in #{years.round} #{year_text}"
end

hours_in_year(1.0)
