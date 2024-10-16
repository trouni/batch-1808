# require "pry-byebug"

def fullname(first_name, last_name)
  # binding.pry #breakpoint
  fname = first_name.capitalize
  lname = last_name.capitalize
  
  "#{fname} #{lname}"
end

puts fullname('yann', 'klein')

# 1. require "pry-byebug"
# 2. binding.pry => breakpoint (pauses the code)
# 3. next => runs the next line
# 4. continue => continues the code execution normally (or until next binding.pry)
# 5. exit
# 6. once done, remove the require and the binding.pry, never commit these

