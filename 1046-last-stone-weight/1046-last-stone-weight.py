class Solution:
    def lastStoneWeight(self, stones: List[int]) -> int:
        stones.sort()
        while len(stones)>1:
            print(stones)
            left = stones[-2]
            right = stones[-1]
            if left == right:
                stones = stones[:-2]
            else:
                stones = stones[:-2]+[right-left]
            stones.sort()
        return stones[0] if len(stones) else 0
        
        # heapq.heapify(self.heap)
        # heapq.heappop(self.heap)
        # heapq.heappush(self.heap, val)