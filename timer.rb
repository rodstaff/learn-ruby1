class Timer

  attr_accessor :seconds

  def initialize(t=0)
	@seconds = t
  end

  def time_string 
	tsec = Time.at(@seconds).utc.strftime("%H:%M:%S")  
  end

end

@timer = Timer.new(12)
p @timer.time_string
@timer = Timer.new(66)
p @timer.time_string
@timer = Timer.new(4000)
p @timer.time_string

#alternative but longer code
  #def time_string 
	# seconds = @seconds%60
	# minutes = (@seconds/60)%60
	# hours = @seconds/3600
	# tsec = "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  #end

 #  def padded(n)
	# (n).to_s.length > 1  ? n.to_s : "0"+ n.to_s
 #  end


