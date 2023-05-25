class Solution:
    def addDigits(self, num: int) -> int:
        while num >= 10:
            temp_sum = 0
            while num > 0:
                temp_sum += num % 10
                num //= 10
            num = temp_sum
        return num
