def plus_one_1(digits)
  carry = 1
  result = []

  (digits.length - 1).downto(0) do |i|
    sum = digits[i] + carry
    carry, remainder = sum.divmod(10)
    result.unshift(remainder)
  end

  result.unshift(carry) if carry > 0
  result
end

def plus_one(digits)
  (digits.length-1).downto(0) do |i|
    if digits[i] < 9
      digits[i] += 1
      return digits
    end
    digits[i] = 0
  end
  
  [1] + digits
end


# Example usage:
digits1 = [1, 2, 3]
puts "Input: #{digits1}"
puts "Output: #{plus_one(digits1)}"  # Output: [1, 2, 4]

digits2 = [4, 3, 2, 1]
puts "Input: #{digits2}"
puts "Output: #{plus_one(digits2)}"  # Output: [4, 3, 2, 2]

digits3 = [9]
puts "Input: #{digits3}"
puts "Output: #{plus_one(digits3)}"  # Output: [1, 0]
