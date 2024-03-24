def single_number(nums)
  result = 0

  nums.each do |num|
    result ^= num
  end

  result
end

# Example usage:
nums1 = [2, 2, 1]
puts "Output: #{single_number(nums1)}"  # Output: 1

nums2 = [4, 1, 2, 1, 2]
puts "Output: #{single_number(nums2)}"  # Output: 4

nums3 = [1]
puts "Output: #{single_number(nums3)}"  # Output: 1
