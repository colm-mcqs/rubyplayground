def bubble_sort values
  (values.length-1).times do |j|
    (values.length-1-j).times do |i|
        values[i], values[i+1] = values[i+1], values[i] if values[i] > values[i+1]
    end
  end
  values
end

puts bubble_sort([5,4,33,2232,144,10]).inspect


def bubble_sort_by values
  (values.length-1).times do |j|
    (values.length-1-j).times do |i|
      values[i], values[i+1] = values[i+1], values[i] if yield(values[i], values[i+1]) < 0
    end
  end
  values
end

puts bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length }

puts bubble_sort_by(["hi","hello","hey"]) { |left,right| right.length - left.length }