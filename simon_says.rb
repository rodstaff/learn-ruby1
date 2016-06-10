def simon_says
  
  def echo(greeting)
    greeting.downcase
  end

  def shout(scream)
    scream.upcase
  end

  def repeat(greeting,rep=2)
  	string = ""
  	string = greeting + " " + greeting if rep == 2
  	string = greeting + " " + greeting + " " + greeting if rep == 3
    return string
  end 
  
  def start_of_word(word,num)
  	string = ""
  	chara = Array.new
  	word.each_char { |x| chara.push(x)}
    for x in 0..num-1 
      string << chara[x]
    end
    return string
  end

  def first_word(phrase)
    word = Array.new
    word = phrase.split(" ")
    return word[0]
  end

  def titleize(name)
    small_words = %w[on the and in for with over]
    sm_wrds = Proc.new{|x| small_words.include?(x) ? x : x.capitalize}
    # title = Array.new
    # title = name.split(" ")
    # return name.capitalize  if title.length == 1
    # return name.split(" ").collect(&:capitalize).join(" ") if title.length == 2
    # return name.split(" ").collect(&sm_wrds).join(" ") if title.length > 2
    new_title = name.split(" ").collect(&sm_wrds) 
    new_title[0].capitalize!
    return new_title.join(" ")
  end

end

p simon_says.echo("hello")
p simon_says.echo("bye")
p simon_says.shout("hello")
p simon_says.shout("hello world")
p simon_says.repeat("hello")
p simon_says.repeat("hello",3)
p simon_says.start_of_word("hello",1)
p simon_says.start_of_word("Bob",2)
p simon_says.start_of_word("abcdefg",1)
p simon_says.start_of_word("abcdefg",2)
p simon_says.start_of_word("abcdefg",3)
p simon_says.first_word("Hello World")
p simon_says.first_word("oh dear")
p simon_says.titleize("jaws")
p simon_says.titleize("david copperfield")
p simon_says.titleize("war and peace")
p simon_says.titleize("the bridge over the river kwai")


