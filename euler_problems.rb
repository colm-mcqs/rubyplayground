def multiplesOf3or5 limit
  sum = 0
  limit.times do |i|
    if((i%3)==0 or (i%5==0))
      sum = sum + i
    end
  end

  puts sum
end

#multiplesOf3or5 1000

def evenFibs limit
  n_minus_three = 2
  n_minus_six = 0
  result = 2
  sum = 0
  while result < limit
    sum += result
    result = 4*n_minus_three + n_minus_six
    n_minus_six = n_minus_three
    n_minus_three = result
  end
  puts sum
end

#evenFibs(4000000)

def primefactors number
  new_number = number.to_f
  largestFactor = 0
  counter = 2.0
  while (counter * counter) <= new_number
    if (new_number.to_f % counter == 0)
      new_number = new_number / counter
      largestFactor = counter
    else
      counter+=1
    end
  end

  if (new_number > largestFactor)
    largestFactor = new_number
  end
  return puts 'Largest Factor ; '+largestFactor.to_i.to_s
end

primefactors(600851475143)
