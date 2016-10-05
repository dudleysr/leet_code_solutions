# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |n, i|
    result = []
    second = target - n
    ((i+1)..(nums.length - 1)).each do |x|
      return [i, x] if nums[x] == second
    end
  end
end

# WAAAAAAAY TOO COMPLICATED ONE
# def two_sum(nums, target)
#     perms = nums.permutation(2).to_a
#     perms.each do |per|
#         if per.inject(:+) == target
#             return nums.each_index.select {|j| nums[j] == per[0] || nums[j] == per[1]}
#         end
#     end
# end