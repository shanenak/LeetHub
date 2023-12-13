class Solution:
    def containsNearbyDuplicate(self, nums: List[int], k: int) -> bool:
        i=0
        while (i<(len(nums))):
            val = nums[i]
            if val in nums[(i+1):(i+k+1)]:
                return True
            i+=1
        return False
            