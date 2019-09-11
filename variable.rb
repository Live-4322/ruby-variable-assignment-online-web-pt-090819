 # Define a local variable called 'greeting',
 # give it the value of the string "Hello World
def greeting
  greeting = "Hello World"
  puts greeting
end


def get_variable_from_file(file,variable)
  file_scope = binding
  file_scope.eval(file.read(file))
  
  begin 
   return file_scope_variable_get(variable)
  rescue NameError
   raise NameError, "local variable #{variable} not defined in #{file}."
 end
end 