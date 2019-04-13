module MyFunctions
  def my_module_function
    puts "Called"
  end
  module_function :my_module_function
end