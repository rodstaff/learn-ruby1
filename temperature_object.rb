class Temperature

  def initialize(opts = {})
    @options = opts
    @c = @options[:c]
    @f = @options[:f]
  end

  def self.from_celsius(deg)
    self.new(:c => deg)
  end

  def self.from_fahrenheit(deg)
    self.new(:f => deg)
  end

  def in_celsius
    if @options.has_key?(:c)
      @c
    elsif @options.has_key?(:f)
      f_to_c(@f)   
    end
  end

  def in_fahrenheit
    if @options.has_key?(:f)
      @f
    elsif @options.has_key?(:c)
      c_to_f(@c)  
    end
  end

  def c_to_f(deg)
    ((deg * 9.0) / 5.0) + 32
  end

  def f_to_c(deg)
    5.0*(deg - 32)/ 9.0 
  end

end


class Celsius < Temperature
  def in_celsius  #overrides method of superclass
    @c
  end
end

class Fahrenheit < Temperature
  def in_fahrenheit #overrides method of superclass
    @f
  end
end

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

p Celsius.new(:c => 50).in_celsius.to_i
p Celsius.new(:c => 50).in_fahrenheit.to_i
p Celsius.new()
p Fahrenheit.new(:f => 50).in_celsius.to_i
p Fahrenheit.new(:f => 50).in_fahrenheit.to_i
p Fahrenheit.new()


