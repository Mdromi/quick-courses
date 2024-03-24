# Creating Hashes:
# Literal notation
person = { "name" => "John", "age" => 30, "city" => "New York" }

# Using Hash.new
car = Hash.new
car["brand"] = "Toyota"
car["model"] = "Camry"
car["year"] = 2022

# Accessing Values:

puts person["name"]   # "John"
puts car["model"]     # "Camry"


# Adding and Modifying Entries:
person["gender"] = "Male"
car["year"] = 2023  # Modifying an existing entry

# Removing Entries:
person.delete("city")

# Checking for Key Existence:
has_age_key = person.key?("age")

# Iterating Over Hashes:
person.each do |key, value|
    puts "#{key}: #{value}"
  end

# Hash Length:
num_entries = person.length

# Fetching Values Safely:
city = person.fetch("city", "Unknown")

# Symbol Keys:
  #Hashes in Ruby often use symbols as keys for efficiency. A symbol key can be written using the colon (:) notation:
  person = { name: "John", age: 30, city: "New York" }
  puts person[:name]  # "John"

# Nested Hashes:
company = {
  name: "ABC Corp",
  employees: {
    "John" => { age: 30, position: "Developer" },
    "Alice" => { age: 25, position: "Designer" }
  }
}

# Iterating Nested 'each' Methods:
company.each do |key, value|
    if value.is_a?(Hash)
      puts "#{key}:"
      value.each do |employee_name, employee_details|
        puts "  #{employee_name}: #{employee_details[:age]}, #{employee_details[:position]}"
      end
    else
      puts "#{key}: #{value}"
    end
  end
  

# Using Nested Loops:
company.each do |key, value|
    puts "#{key}:"
    if value.is_a?(Hash)
      value.each do |employee_name, employee_details|
        puts "  #{employee_name}: #{employee_details[:age]}, #{employee_details[:position]}"
      end
    else
      puts "  #{value}"
    end
  end
  
