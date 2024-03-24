# while Loop:
# Example: Print numbers from 1 to 5 using while loop
i = 1
while i <= 5
  puts i
  i += 1
end

# until Loop:
    # The until loop is similar to while, but it repeats the block of code as long as a specified condition is false.
    # Example: Print numbers from 1 to 5 using until loop
    i = 1
    until i > 5
        puts i
        i += 1
    end


# for Loop:
# Example: Print numbers from 1 to 5 using for loop
for i in 1..5
    puts i
end
  
# .each Iterator:
# Example: Print numbers from 1 to 5 using each iterator
(1..5).each do |i|
    puts i
end

# .times Iterator:
# Example: Print "Hello" five times using times iterator
5.times do
    puts "Hello"
end

# Nested Loops:
# Example: Nested loop to create a multiplication table
for i in 1..5
    for j in 1..5
      print "#{i * j}\t"
    end
    puts "\n"
end

# Loop Control Keywords:
# break: Terminates the loop.
# next: Skips the rest of the code in the current iteration and moves to the next one.
# redo: Restarts the current iteration of the loop.

# Example: Using break, next, and redo
i = 0
while i < 5
  i += 1
  next if i == 2
  redo if i == 3
  break if i == 4
  puts i
end

