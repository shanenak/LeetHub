class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        l, r=0,1
        maxSub=1 if len(s)>0 else 0
        while (r<len(s) ):
            if(s[r] not in s[l:r]):
                maxSub = max(maxSub, (r-l+1))
                r+=1
            else:
                l+=1
        return maxSub