  def reverser
    w_arr = Array.new
    x = yield.split(" ")  # 'yield' = 'block.call'
    x.each do |y|
    n = y.reverse
    w_arr.push(n)
    end

    w_rev = w_arr.join(" ")
    return w_rev  # can work w/o "return!" (ruby magic!)

  end

  def adder(num=1)
    num + yield
  end

  def repeater(num=0)
    if num == 0
      return yield
    else
      num.times do |n|
        yield
      end
    end
  end

p reverser{"hello"}
p reverser{"hello dolly"}
p adder{5}  # or 'sb.adder(){5}'' w/ '()'
p adder(3){5}
p repeater(3){1}
p repeater(10){1}