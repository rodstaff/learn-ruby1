class Book
  # initialize is necessary so that the instance @title can be accessed within the class
  def initialize (title="")
    @title = title
  end

  attr_accessor :title

  def title
  	cap_title = []
#  	wstr = Array.new  # do not have to do this since 'split(" ")' will create the array!
  	wstr = @title.split(" ")      
    wstr.each do |x|
    x.capitalize! if !%w(the a an and in of for from).include?(x) || %w(i).include?(x)
    cap_title << x
    end
    cap_title[0].capitalize!
    return cap_title.join(" ")   # the 'return' is optional
  end

end

#create object 'book'
@book = Book.new
@book.title = "inferno"
p @book.title

@book = Book.new
@book.title = "stuart little"
p @book.title

@book = Book.new
@book.title = "alexander the great"
p @book.title

@book = Book.new
@book.title = "to kill a mockingbird"
p @book.title

@book = Book.new
@book.title = "to eat an apple a day"
p @book.title

@book = Book.new
@book.title = "war and peace"
p @book.title

@book = Book.new
@book.title = "love in time of cholera"
p @book.title

@book = Book.new
@book.title = "what i wish i knew when i was 20"
p @book.title

@book = Book.new
@book.title = "the man in the iron mask"
p @book.title

