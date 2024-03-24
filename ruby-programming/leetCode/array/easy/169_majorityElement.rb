# Bit Masking
def majority_element(nums)
  majority = nums[0]
  count = 1

  (1...nums.length).each do |i|
    if nums[i] == majority
      count += 1
    else
      count -= 1
      if count == 0
        majority = nums[i]
        count = 1
      end
    end
  end

  majority
end

# Example usage:
nums_example = [2, 2, 1, 1, 1, 2, 2]
result = majority_element(nums_example)

puts "The majority element in the array #{nums_example} is: #{result}"
