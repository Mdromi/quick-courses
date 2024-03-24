def merge(nums1, m, nums2, n)
  # Start from the end of both arrays
  i = m - 1
  j = n - 1
  k = m + n - 1

  while i >= 0 && j >= 0
    # Compare elements from the end and place the larger one at nums1[k]
    if nums1[i] > nums2[j]
      nums1[k] = nums1[i]
      i -= 1
    else
      nums1[k] = nums2[j]
      j -= 1
    end
    k -= 1
  end

  # If there are remaining elements in nums2, copy them to nums1
  while j >= 0
    nums1[k] = nums2[j]
    j -= 1
    k -= 1
  end
end

# Example usage:
nums1_1 = [1, 2, 3, 0, 0, 0]
m_1 = 3
nums2_1 = [2, 5, 6]
n_1 = 3
merge(nums1_1, m_1, nums2_1, n_1)
puts "Output: #{nums1_1}"  # Output: [1, 2, 2, 3, 5, 6]

nums1_2 = [1]
m_2 = 1
nums2_2 = []
n_2 = 0
merge(nums1_2, m_2, nums2_2, n_2)
puts "Output: #{nums1_2}"  # Output: [1]

nums1_3 = [0]
m_3 = 0
nums2_3 = [1]
n_3 = 1
merge(nums1_3, m_3, nums2_3, n_3)
puts "Output: #{nums1_3}"  # Output: [1]
