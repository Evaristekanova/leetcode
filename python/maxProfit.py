from typing import List

class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        current_day_price = prices[0]
        profit = 0

        for next_day_price in prices[1:]:
            if (current_day_price > next_day_price):
                current_day_price = next_day_price
                continue
            
            profit = max((next_day_price - current_day_price, profit))
        
        return profit

