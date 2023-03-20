class Solution:
    def decodeString(self, s: str) -> str:
        stack = []
        for c in s:
            if c == ']':
                sub = ''
                while stack[-1] != '[':
                    sub = stack.pop() + sub
                stack.pop()
                num = ''
                while stack and stack[-1].isdigit():
                    num = stack.pop() + num
                stack.append(sub * int(num))
            else:
                stack.append(c)
        return ''.join(stack)
