class HelloWorld

  # Call with HelloWorld.greet
  def self.greet()
    puts "Hello World!"
  end
  
  def self.printFirstTenIntegers()
    (1..10).each { |i|
      puts i
    }
  end
end