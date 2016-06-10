
def measured_time(x=1)

  t1 = Time.now
  x.times {yield}
  t2 = Time.now
  elapsed_time = ((t2 - t1)/x)

end

p measured_time(20){"8 000 000 000 000 000 000 000 000".to_i.times}