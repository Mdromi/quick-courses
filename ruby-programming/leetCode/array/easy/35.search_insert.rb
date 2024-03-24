def search_insert(nums, target)
    left = 0
    right = nums.length - 1
    
    while left <= right
        mid = (left + right) / 2
        mid_value = nums[mid]
        
        if mid_value == target
            return mid
        elsif mid_value < target
            left = mid + 1
        else 
            right = mid - 1
        end
    end
    
    return left
end

# Example usage:
nums1 = [1, 3, 5, 6]
target1 = 5
puts search_insert(nums1, target1)  # Output: 2

nums2 = [1, 3, 5, 6]
target2 = 2
puts search_insert(nums2, target2)  # Output: 1

nums3 = [1, 3, 5, 6]
target3 = 7
puts search_insert(nums3, target3)  # Output: 4
