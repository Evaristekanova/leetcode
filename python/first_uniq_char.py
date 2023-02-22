from collections import Counter

class Solution:
    def firstUniqChar(self, s: str) -> int:
        s_dict = Counter(s)

        for i, char in enumerate(s):
            if s_dict[char] == 1:
                return i

        return -1

