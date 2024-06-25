def day_trader(prices)
  max_profit = 0
  best_days = []

  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day + 1..].each_with_index do |sell_price, sell_day|
      profit = sell_price - buy_price
      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, buy_day + sell_day + 1]
      end
    end
  end

  best_days
end

# Exemple d'utilisation
prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts day_trader(prices) # Output: [1, 4]
