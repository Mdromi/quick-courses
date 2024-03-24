require 'set'

def contains_duplicate2(nums)
  seen = Set.new

  nums.each do |num|
    return true if seen.include?(num)
    seen.add(num)
  end

  false
end


# Example usage:
nums1 = [1, 2, 3, 1]
puts "Output: #{contains_duplicate(nums1)}"  # Output: true

nums2 = [1, 2, 3, 4]
puts "Output: #{contains_duplicate(nums2)}"  # Output: false

nums3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
puts "Output: #{contains_duplicate(nums3)}"  # Output: true
