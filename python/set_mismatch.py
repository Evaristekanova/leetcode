from typing import List

class Solution:
    def findErrorNums(self, nums: List[int]) -> List[int]:
        n = len(nums)
        sum_of_nums = sum(nums)
        sum_of_set = sum(set(nums))
        missing_num = (n * (n+1)) // 2 - sum_of_set
        duplicate_num = sum_of_nums - sum_of_set
        return [duplicate_num, missing_num]

