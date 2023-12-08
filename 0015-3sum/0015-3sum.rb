# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    return [] if nums.length<3
    
    nums.sort!
    res = []
    nums.each_with_index do |num, idx|
        next if idx>0 && num==nums[idx-1]
        l = idx+1
        r = nums.length-1
        while (l<r)
            sum = num+nums[l]+nums[r]
            if sum==0
                res.push([num, nums[l], nums[r]])
                l+=1
            elsif sum>0
                r-=1
            else
                l+=1
            end
        end
    end
    return res.uniq
end


# def three_sum(nums)
#     output = []
#     return output if nums.length < 3

#     nums.sort!

#     nums.each_with_index do |num, index|
#         next if index > 0 && num == nums[index - 1]

#         start_pointer = index + 1
#         end_pointer = nums.length - 1

#         while start_pointer < end_pointer
#             summation = nums[index] + nums[start_pointer] + nums[end_pointer]

#             if summation == 0
#                 output << [nums[index], nums[start_pointer], nums[end_pointer]]
#                 start_pointer += 1
#                 start_pointer += 1 while nums[start_pointer] == nums[start_pointer - 1] && start_pointer < end_pointer
#             elsif summation < 0
#                 start_pointer += 1
#             elsif summation > 0
#                 end_pointer -= 1
#             end
#         end
#     end

#     output
# end