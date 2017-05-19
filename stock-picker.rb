def stock_picker stock_prices

  biggest_difference = 0
  day_buy = 0
  day_sell = 0
  stock_prices.each_with_index do |price_buy, price_buy_index|
    stock_prices[price_buy_index+1..-1].each_with_index do |price_sell, price_sell_index|
      difference = price_sell - price_buy

      if (difference) > biggest_difference
        biggest_difference = difference
        day_buy = price_buy_index
        day_sell = price_sell_index + price_buy_index +1
      end

    end
  end

  result = [day_buy, day_sell]
  puts result

end

stock_picker([17,3,6,9,15,8,6,1,10])
