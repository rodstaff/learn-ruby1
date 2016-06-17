class Array

  def sum
    if self.empty?
	  0
	else
	  ad = 0
	  self.each do |x|
	    ad += x
	  end
	  ad
	end
  end
	
  def square
	if self.empty?
	 []
	else
	  self.map do |x|   # or 'self.collect'
	    x**2
	  end
    end

  end
	
  def square!
    self.map! do |x|    # or 'self.collect'
      x**2
    end	
  end
	
end

## this code is incomplete and therefore does not pass Rspec!
Array = [5,6,7,8,9]
p Array.square
p Array