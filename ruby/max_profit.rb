def max_profit(prices)
  max_profit = 0
  initial_index = 0

  prices.each do |price|
    if prices[initial_index] < price
      profit = price - prices[initial_index]
      max_profit = [max_profit, profit].max
    else
      initial_index = prices.index(price)
    end
  end

  max_profit
end
