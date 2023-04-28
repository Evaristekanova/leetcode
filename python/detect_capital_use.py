import re

class Solution:
    def detectCapitalUse(self, word: str) -> bool:
        if re.match(r'^[A-Z]+$', word):
            return True
        elif re.match(r'^[a-z]+$', word):
            return True
        elif re.match(r'^[A-Z][a-z]+$', word):
            return True
        else:
            return False
