def temperature_conversion

  def ftoc(temp)
    ((temp.to_f - 32)*5/9).to_i 
  end 
  def ctof(temp)
  	(9*temp.to_f/5 + 32)
  end

end

p temperature_conversion.ftoc(32)
p temperature_conversion.ftoc(212)
p temperature_conversion.ftoc(98.6)
p temperature_conversion.ftoc(68)

p temperature_conversion.ctof(0).to_i
p temperature_conversion.ctof(100).to_i
p temperature_conversion.ctof(20).to_i
p temperature_conversion.ctof(37).round(1)


