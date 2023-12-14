class Solution:
    def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
        if len(candidates)==0 or min(candidates)>target:
            return []
        sortCand = sorted(candidates)
        total = []
        i=0
        while len(candidates)>i and sortCand[i]<=target:
            if sortCand[i]==target:
                total.append([target])
            else:
                res = self.combinationSum(sortCand, target-sortCand[i])
                for j in res:
                    if len(res)>0 and sorted([sortCand[i]]+j) not in total:
                        total.append(sorted([sortCand[i]]+j))
            i+=1
        return total
            
            