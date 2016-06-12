class Temperature

  def initialize(c_or_f = {})
    @c_or_f = c_or_f
    @c = @c_or_f[:c]
    @f = @c_or_f[:f]
  end

  def self.from_celsius(deg)
    self.new(:c => deg)
  end

  def self.from_fahrenheit(deg)
    self.new(:f => deg)
  end

  def in_celsius
    if @c_or_f.has_key?(:c)
      @c
    elsif @c_or_f.has_key?(:f)
      ftoc(@f)   #original had 'ctof'
    end
  end

  def in_fahrenheit
    if @c_or_f.has_key?(:f)
      @f
    elsif @c_or_f.has_key?(:c)
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


class Celsius < Temperature
  def initialize(deg)
    @c_or_f = {}
    @c_or_f[:c] = deg
    @c = @c_or_f[:c]
  end

end

class Fahrenheit < Temperature
  def initialize(deg)
    @c_or_f = {}
    @c_or_f[:f] = deg
    @f = @c_or_f[:f]
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

p Celsius.new(50).in_celsius.to_i
p Celsius.new(50).in_fahrenheit.to_i

p Fahrenheit.new(50).in_celsius.to_i
p Fahrenheit.new(50).in_fahrenheit.to_i



