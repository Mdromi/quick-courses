# A Proc (short for "procedure") in Ruby is an object that encapsulates a block of code, which can be stored in a variable, passed to methods, and executed.

# Procs: Do not enforce the number of arguments strictly.
# Procs: When a return statement is executed inside a Proc, it returns from the method that encloses the Proc.

my_proc = proc { puts "Hello from Proc" }
# or
my_proc = Proc.new { puts "Hello from Proc" }
# call as follows
my_proc.call  # Output: "Hello from Proc"

# Argument Handling:
my_proc = Proc.new { |a, b| puts "a: #{a}, b: #{b}" }
my_proc.call(1, 2)      # Output: a: 1, b: 2
my_proc.call(1)         # Output: a: 1, b:
my_proc.call(1, 2, 3)    # Output: a: 1, b: 2

# Return Behavior:
def example_method
  my_proc = Proc.new { return "Returning from Proc" }
  result = my_proc.call
  puts result
  return "Returning from method"
end
puts example_method  # Output: "Returning from Proc"

# Proc to a block:
proc_object = Proc.new { puts "Inside the proc" }
example_method(&proc_object)  # convert a proc to a block by using &

# procs can be passed as arguments:
def example_method(proc_object)
  proc_object.call
end
my_proc = Proc.new { puts "Hello from Proc" }
example_method(my_proc)  # Output: "Hello from Proc"

#Callbacks
def execute_callback(callback)
  puts "Before callback"
  callback.call
  puts "After callback"
end

my_callback = Proc.new { puts "This is a callback!" }
execute_callback(my_callback)