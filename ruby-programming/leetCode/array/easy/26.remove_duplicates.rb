def remove_duplicates(nums)
  return 0 if nums.empty?

  unique_index = 0

  (1...nums.length).each do |i|
    if nums[i] != nums[unique_index]
      unique_index += 1
      nums[unique_index] = nums[i]
    end
  end

  unique_index + 1
end

# Example usage:
nums1 = [1, 1, 2]
k1 = remove_duplicates(nums1)
puts "Output: #{k1}, nums = #{nums1[0...k1]}"  # Output: 2, nums = [1, 2]

nums2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
k2 = remove_duplicates(nums2)
puts "Output: #{k2}, nums = #{nums2[0...k2]}"  # Output: 5, nums = [0, 1, 2, 3, 4]
