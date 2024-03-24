#  if-else Statements:
x = 5

if x > 0
  puts "x is positive"
else
  puts "x is non-positive"
end

# elsif Clause:
grade = 85

if grade >= 90
  puts "A"
elsif grade >= 80
  puts "B"
elsif grade >= 70
  puts "C"
else
  puts "D"
end

# unless Statement:
x = 5

unless x > 10
  puts "x is not greater than 10"
end

# case Statement:
day = "Monday"

case day
when "Monday"
  puts "Start of the week"
when "Friday"
  puts "TGIF!"
else
  puts "Some other day"
end

# Ternary Operator:
age = 20
status = (age >= 18) ? "Adult" : "Minor"
puts status

# Logical Operators:
x = 5
y = 10

if x > 0 && y > 0
  puts "Both x and y are positive"
end

# Modifier Form:
puts "x is positive" if x > 0

puts "x is not greater than 10" unless x > 10
