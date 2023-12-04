/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number}
 */
var search = function(nums, target) {
    console.log(nums)
    if (nums.length===0) return -1
    let midIdx = Math.floor(nums.length/2);
    if (nums[midIdx]=== target) {
        return midIdx
    } else if (nums[midIdx]<target) {
        let res = search(nums.slice(midIdx+1), target)
        if (res===-1) return -1
        return res + midIdx + 1
    } else {
        return search(nums.slice(0, midIdx), target)
    }
};