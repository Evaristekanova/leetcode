from typing import List

class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        unique_nums = set()

        for num in nums:
            if num in unique_nums:
                unique_nums.remove(num)
            else:
                unique_nums.add(num)

        return unique_nums.pop()
