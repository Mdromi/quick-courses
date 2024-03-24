def three_sum(nums)
    nums.sort!
    result = []
    
    (0..nums.length - 3).each do |i|
      next if i > 0 && nums[i] == nums[i - 1] # Skip duplicates for the first number
      
      left = i + 1
      right = nums.length - 1
      
      while left < right
        sum = nums[i] + nums[left] + nums[right]
        
        if sum == 0
          result << [nums[i], nums[left], nums[right]]
          left += 1
          right -= 1
          left += 1 while left < right && nums[left] == nums[left - 1] # Skip duplicates for the second number
          right -= 1 while left < right && nums[right] == nums[right + 1] # Skip duplicates for the third number
        elsif sum < 0
          left += 1
        else
          right -= 1
        end
      end
    end
    
    result
  end
  
  # Test cases
  puts three_sum([-1, 0, 1, 2, -1, -4]).inspect
  puts three_sum([0, 1, 1]).inspect
  puts three_sum([0, 0, 0]).inspect
  