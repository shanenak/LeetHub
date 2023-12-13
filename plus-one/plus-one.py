class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        i = -1
        while (-i<len(digits)) & (digits[i]+1==10):
            digits[i] = 0
            i -= 1

        digits[i] = digits[i]+1
        if digits[0]==10:
            digits[0] = 0
            digits = [1]+digits
        return digits
            
        