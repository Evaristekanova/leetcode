def max_profit(prices)
maxProfit = 0
initial_index = 0

prices.each do |price|
  if prices[initial_index] < price
    profit = price - prices[initial_index]
    maxProfit = [MaxProfit, profit].max
  else
    initial_index = prices.index(price)
  end

  maxProfit
    
end
