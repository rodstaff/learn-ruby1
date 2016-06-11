class Book

  def initialize (title="")
    @book = title
  end

  def title(header)
  	cap_title = []
#  	wstr = Array.new  # do not have to do this since 'split(" ")' will create the array!
  	wstr = header.split(" ")

    wstr.each do |x|
    x.capitalize! if !%w(the a an and in of for from).include?(x) || %w(i).include?(x)
    cap_title << x
    end

    cap_title[0].capitalize!
    return cap_title.join(" ")
  end

end

#create object bk
bk = Book.new

bk.title("inferno")
bk.title("stuart little")
p bk.title("alexander the great")
p bk.title("to kill a mockingbird")
p bk.title("to eat an apple a day")
p bk.title("war and peace")
p bk.title("love in time of cholera")
p bk.title("what i wish i knew when i was 20")
p bk.title("the man in the iron mask")



  