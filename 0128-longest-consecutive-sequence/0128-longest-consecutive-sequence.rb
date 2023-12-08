# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
    sorted = nums.sort
    max = 1
    prev = sorted[0]
    count = 1
    if sorted.length==0
        return 0
    end
    sorted[1..].each do |ele|
        if (prev==ele)
            
        elsif (prev+1==ele)
            count+=1
            max = [count, max].max
        else
            count=1
        end
        prev = ele
    end
    return max
end