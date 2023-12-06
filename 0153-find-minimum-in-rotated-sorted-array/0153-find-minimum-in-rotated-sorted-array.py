class Solution:
    def findMin(self, nums: List[int]) -> int:
        if (len(nums)==2):
            if (nums[0]<nums[1]):
                return nums[0]
            else:
                return nums[1]
        l=0
        r=len(nums)-1
        while (r-l>1):
            mid = (r+l)//2
            print("left ", l)
            print("mid ", mid)
            print("right ", r)
            if (nums[r]>nums[mid] & nums[mid]>nums[l]):
                return nums[l]
            elif (nums[mid]>nums[l]):
                l=mid
            else:
                r=mid
        
        return nums[r]
                
        