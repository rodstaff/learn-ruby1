class Book
  # initialize is not necessary for this code!
  def initialize (title)
    @book = title
  end

  def title
  	cap_title = []
#  	wstr = Array.new  # do not have to do this since 'split(" ")' will create the array!
  	wstr = @book.split(" ") # THIS IS THE ANSWER!!!
    wstr.each do |x|
    x.capitalize! if !%w(the a an and in of for from).include?(x) || %w(i).include?(x)
    cap_title << x
    end
    cap_title[0].capitalize!
    return cap_title.join(" ")   
  end

end

#create object 'book'
book = Book.new("inferno")
p book.title
book = Book.new("stuart little")
p book.title
book = Book.new("alexander the great")
p book.title
book = Book.new("to kill a mockingbird")
p book.title
book = Book.new("to eat an apple a day")
p book.title
book = Book.new("war and peace")
p book.title
book = Book.new("love in time of cholera")
p book.title
book = Book.new("what i wish i knew when i was 20")
p book.title
book = Book.new("the man in the iron mask")
p book.title