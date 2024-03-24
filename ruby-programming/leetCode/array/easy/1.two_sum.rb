def two_sum(nums, target)
  num_hash = {}

  nums.each_with_index do |num, index|
    complement = target - num

    if num_hash.key?(complement)
      return [num_hash[complement], index]
    end

    num_hash[num] = index
  end

  # In case there is no solution, though it is guaranteed that there is always one.
  return nil
end

# Example usage:
nums1 = [2, 7, 11, 15]
target1 = 9
puts two_sum(nums1, target1)  # Output: [0, 1]

nums2 = [3, 2, 4]
target2 = 6
puts two_sum(nums2, target2)  # Output: [1, 2]

nums3 = [3, 3]
target3 = 6
puts two_sum(nums3, target3)  # Output: [0, 1]
