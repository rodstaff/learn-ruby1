class RPNCalculator

attr_accessor :calculator

  def initialize()
	@calculator=[]
  end
	
  def push(x)
	@calculator << x
  end
	
  def value
	@calculator.last
  end
	
  def plus
	if @calculator.size >= 2
	  sum = @calculator.pop + @calculator.pop
	  @calculator << sum
	else
	  raise "calculator is empty"
    end
  end

  def minus
	if @calculator.size >= 2
	  b = @calculator.pop
	  a = @calculator.pop
	  difference = a - b
	  @calculator << difference
    else
	  raise "calculator is empty"  #stops execution ('raise') when this exception happens!
    end
  end
	
  def divide
	if @calculator.size >= 2
	  b = @calculator.pop
	  a = @calculator.pop.to_f
	  quotient = a.to_f / b.to_f
      @calculator << quotient
	else
	  raise "calculator is empty"  #stops execution ('raise') when this exception happens!
	end 
  end
	
  def times
	if @calculator.size >= 2
	  b = @calculator.pop
	  a = @calculator.pop
	  product = a.to_f * b.to_f
	  @calculator << product
	else
	  raise "calculator is empty"  #stops execution ('raise') when this exception happens!
	end
  end
	
  def tokens(x)
    arr = x.split(" ")
	y = arr.collect do |a|
	  # if ( a == "+" || a == "-" || a == "*" || a == "/")
      if %w(+ - * /).include?(a)
	    a.to_sym
	  else
	    a.to_i
	  end
    end
	y
  end
	
  def evaluate(y)
	tokens(y).each do |s|
	  if s == :+
		self.plus   # 'self' equivalent to 'this' in JavaScript!
	  elsif s == :-
		self.minus
	  elsif s == :/
		self.divide
      elsif s == :*
		self.times
      else
		self.push(s)
	  end
	end
	self.value
  end	
end

calculator = RPNCalculator.new
# @calculator = RPNCalculator.new
# @calculator.push(2)
# @calculator.push(3)
# @calculator.push(4)
# @calculator.push(5)
# @calculator.plus
# @calculator.divide
# @calculator.plus
# p @calculator.value
# @calculator.plus
# @calculator.push(1)
# @calculator.push(2)
# @calculator.push(3)
# p calculator.evaluate("1 2 3 * +")
# p calculator
# p calculator.tokens("1 2 3 * + 4 5 - /")
p calculator.evaluate("1 2 3 * + 4 5 - /")



