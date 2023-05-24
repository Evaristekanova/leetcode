class Solution:
    def findWords(self, words: List[str]) -> List[str]:
        keyboard_rows = [
            set("qwertyuiop"),
            set("asdfghjkl"),
            set("zxcvbnm")
        ]
        
        result = []
        
        for word in words:
            lowercase_word = word.lower()
            if any(set(lowercase_word).issubset(row) for row in keyboard_rows):
                result.append(word)
        
        return result
