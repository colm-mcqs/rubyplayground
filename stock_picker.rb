def stock_picker prices
  profit = 0
  buy_day = -1
  sell_day = -1
  prices[0..-2].each_with_index do |buy, i|
    prices[(i+1)..-1].each_with_index do |sell, j|
      if (sell-buy) > profit
        buy_day = i
        sell_day = j + (i+1)
        profit = (sell-buy)
      end
    end
  end
  [buy_day, sell_day]
end

puts stock_picker([18,3,6,8,15,8,6,1,10]).inspect
