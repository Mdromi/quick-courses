def max_area(height)
  left = 0
  right = height.length - 1
  max_water = 0

  while left < right
    h = [height[left], height[right]].min
    width = right - left
    max_water = [max_water, h * width].max

    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end

  max_water
end

# Example 1
height1 = [1, 8, 6, 2, 5, 4, 8, 3, 7]
puts "Example 1:"
puts "Input: #{height1}"
puts "Output: #{max_area(height1)}"  # Output: 49

# Example 2
height2 = [1, 1]
puts "\nExample 2:"
puts "Input: #{height2}"
puts "Output: #{max_area(height2)}"  # Output: 1
