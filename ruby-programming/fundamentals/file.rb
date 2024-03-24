# Opening and Closing Files:
# Using File.open with a block
# File.open("example.txt", "w") do |file|
#     # File operations go here
# end

# "r": Read-only
# "w": Write-only (creates a new file or truncates an existing file)
# "a": Append (creates a new file or appends to an existing file)
# "r+": Read and write
  
# Shorthand using File.new
# file = File.new("example.txt", "w")
# File operations go here
# file.close
  

# Reading from a File
File.open("example.txt", "r") do |file|
    content = file.read
    puts content
end
  
# Reading Line by Line:
File.open("example.txt", "r") do |file|
    file.each_line do |line|
      puts line
    end
end

# Writing to a File:
File.open("example.txt", "w") do |file|
    file.puts "Hello, World!"
    file.puts "This is a new line."
end

# Appending to a File:
File.open("example.txt", "a") do |file|
    file.puts "Appending to the file."
end
  
# Checking File Existence:
if File.exist?("example.txt")
    puts "File exists."
else
    puts "File does not exist."
end

# File Modes and Attributes:
# Checking file size
size = File.size("example.txt")
puts "File size: #{size} bytes"

# Checking file permissions
permissions = File.stat("example.txt").mode
puts "File permissions: #{permissions}"

# Checking file timestamps
# creation_time = File.birthtime("example.txt")
# modification_time = File.mtime("example.txt")

# puts "Creation time: #{creation_time}"
# puts "Modification time: #{modification_time}"

# Handling Exceptions:
begin
  File.open("nonexistent_file.txt", "r") do |file|
    content = file.read
    puts content
  end
rescue Errno::ENOENT
  puts "File not found."
rescue Errno::EACCES
  puts "Permission denied."
end
