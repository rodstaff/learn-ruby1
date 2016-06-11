class Book

  # initialize is not necessary for this code!
  def initialize (title="")
    @book = title
  end

  def title(title)
  	cap_title = []
#  	wstr = Array.new  # do not have to do this since 'split(" ")' will create the array!
  	wstr = title.split(" ")

    wstr.each do |x|
    x.capitalize! if !%w(the a an and in of for from).include?(x) || %w(i).include?(x)
    cap_title << x
    end
    cap_title[0].capitalize!

    @book = cap_title.join(" ")   # THIS IS THE ANSWER!!!

  end

end

#create object 'book'
book = Book.new

p book.title("inferno")
p book.title("stuart little")
p book.title("alexander the great")
p book.title("to kill a mockingbird")
p book.title("to eat an apple a day")
p book.title("war and peace")
p book.title("love in time of cholera")
p book.title("what i wish i knew when i was 20")
p book.title("the man in the iron mask")



  