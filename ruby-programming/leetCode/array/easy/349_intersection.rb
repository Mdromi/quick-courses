def intersection(nums1, nums2)
  set1 = nums1.to_set
  set2 = nums2.to_set
  
  result = set1.intersection(set2).to_a
  
  return result
end

# Example 1
nums1_1 = [1, 2, 2, 1]
nums2_1 = [2, 2]
output_1 = intersection(nums1_1, nums2_1)
puts "Example 1 Output: #{output_1}"

# Example 2
nums1_2 = [4, 9, 5]
nums2_2 = [9, 4, 9, 8, 4]
output_2 = intersection(nums1_2, nums2_2)
puts "Example 2 Output: #{output_2}"
