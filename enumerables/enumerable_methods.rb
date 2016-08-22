module Enumerable
  def my_each
    return self unless block_given?
    for i in self
      yield(i)
    end
  end

  def my_each_with_index
    return self unless block_given?
    0.upto(self.length-1) do |i|
      yield(self[i], i)
    end
  end

  def my_select
    return self unless block_given?
    my_array = []
    for i in self
      my_array << i if yield(i)
    end
    my_array
  end
end