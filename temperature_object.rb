class Temperature

  def initialize(opts = {})
    @options = opts
    @c = @options[:c]
    @f = @options[:f]
  end

  def self.from_celsius(num)
    self.new(:c => num)
  end

  def self.from_fahrenheit(num)
    self.new(:f => num)
  end

  def in_celsius
    if @options.has_key?(:c)
      @c
    elsif @options.has_key?(:f)
      ftoc(@f)   #original had 'ctof'
    end
  end

  def in_fahrenheit
    if @options.has_key?(:f)
      @f
    elsif @options.has_key?(:c)
      ctof(@c)   #original had 'ftoc'
    end
  end

  def ctof(num)
    (((num * 9) / 5.0) + 32)  #original had '5.000'
  end

  def ftoc(num)
    (((num - 32) * 5) / 9.0)  #original had '9.0000'
  end

end


# class Celsius < Temperature
#   def in_celsius
#     @c
#   end
# end

# class Fahrenheit < Temperature
#   def in_fahrenheit
#     @f
#   end
# end

p Temperature.new(:f => 50).in_fahrenheit.to_i
p Temperature.new(:f => 32).in_celsius.to_i
p Temperature.new(:f => 212).in_celsius.to_i
p Temperature.new(:f => 98.6).in_celsius
p Temperature.new(:f => 68).in_celsius.to_i
p Temperature.new(:c => 50).in_celsius.to_i
p Temperature.new(:c => 0).in_fahrenheit.to_i
p Temperature.new(:c => 100).in_fahrenheit.to_i

p Temperature.from_celsius(50).in_celsius.to_i
p Temperature.from_celsius(50).in_fahrenheit.to_i
p Temperature.from_fahrenheit(50).in_fahrenheit.to_i
p Temperature.from_fahrenheit(50).in_celsius.to_i

# p Celsius.new(:c => 50).in_celsius.to_i
# p Celsius.new(:c => 50).in_fahrenheit.to_i
# p Celsius.new()
# p Fahrenheit.new(:f => 50).in_celsius.to_i
# p Fahrenheit.new(:f => 50).in_fahrenheit.to_i
# p Fahrenheit.new()


