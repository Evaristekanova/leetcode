class Solution:
    def isValid(self, s: str) -> bool:
        bracket_stack = []
        bracket_map = {")": "(", "}": "{", "]": "["}

        for bracket in s:
            if bracket in bracket_map:
                top_bracket = bracket_stack.pop() if bracket_stack else "#"
                if bracket_map[bracket] != top_bracket:
                    return False
            else:
                bracket_stack.append(bracket)

        return not bracket_stack

