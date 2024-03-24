def remove_element(nums, val)
  return 0 if nums.empty?

  non_val_index = 0

  nums.each do |num|
    if num != val
      nums[non_val_index] = num
      non_val_index += 1
    end
  end

  non_val_index
end

# Example usage:
nums1 = [3, 2, 2, 3]
val1 = 3
k1 = remove_element(nums1, val1)
puts "Output: #{k1}, nums = #{nums1[0...k1]}"  # Output: 2, nums = [2, 2]

nums2 = [0, 1, 2, 2, 3, 0, 4, 2]
val2 = 2
k2 = remove_element(nums2, val2)
puts "Output: #{k2}, nums = #{nums2[0...k2]}"  # Output: 5, nums = [0, 1, 4, 0, 3]
