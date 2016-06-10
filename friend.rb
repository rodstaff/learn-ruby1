class Friend

  def greeting(who=nil)
  	if who==nil
      "Hello!"
    else
	  "Hello, #{who}!"
	end
  end

end

p Friend.new.greeting
p Friend.new.greeting("Bob")