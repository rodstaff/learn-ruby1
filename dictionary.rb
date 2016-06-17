class Dictionary

  attr_accessor :entries
  
  def initialize
    @entries = {}
  end
  
  def add(x)                  # accepts hash inputs
    if x.is_a?(String)
      @entries[x]=nil
    else
      x.each do |key,value|   # accepts strings as key with a 'nil' value
      @entries[key]= value
      end
    end
  end
  
  def keywords
    @entries.keys.sort
  end

  def include?(x)
    if @entries.keys.include?(x)
      true
    else 
      false
    end
    
  end
  
  def find(x)
    answer={}
      @entries.each do |key,value|
        if key[0...x.length] == x
            answer[key]=value
        end
        if x[0..1] == key[0..1]
          answer[key]=value
        end
          
      end
        return answer
  end
  
  
  def printable
    a = @entries.sort.map do |key,value|
    "[#{key}] \"#{value}\""
  
    end
    a.join("\n")
  end
  
end

@d = Dictionary.new
@d.entries
@d.add('fish' => 'aquatic animal')
p @d.entries
p @d.keywords
@d = Dictionary.new
@d.add('fish')
p @d.entries
p @d.keywords
p @d.include?('fish')
p @d.include?('bird')
p @d.include?('fi')
p @d.find('fi')
@d.add('fish' => 'aquatic animal')
@d.add('fiend' => 'wicked person')
@d.add('great' => 'remarkable')
p @d.find('f')  # {"fish"=>"aquatic animal", "fiend"=>"wicked person"}
p @d.find('g')
@d.add('zebra' => 'African land animal with stripes')
@d.add('fish' => 'aquatic animal')
@d.add('apple' => 'fruit')
p @d.entries
p @d.printable


#@d.add = {'zebra' => 'African land animal with stripes'}
# @d.add('fish' => 'aquatic animal')
# @d.add('apple' => 'fruit')
 
# keywords -->%w(apple fish zebra)
# printables --> %Q*[apple] "fruit"\n[fish] "aquatic animal"\n[zebra] "African land animal with stripes"*
# p %Q*[apple] "fruit"\n[fish] "aquatic animal"\n[zebra] "African land animal with stripes"* 
#  %Q
# This is an alternative for double-quoted strings, when you have more quote characters in a string.Instead of putting backslashes in front of them, you can easily write:
# >> %Q(Joe said: "Frank said: "#{what_frank_said}"")
# => "Joe said: "Frank said: "Hello!"""
# The parenthesis “(…)” can be replaced with any other non-alphanumeric characters and non-printing characters (pairs), so the following commands are equivalent:

# >> %Q!Joe said: "Frank said: "#{what_frank_said}""!
# >> %Q[Joe said: "Frank said: "#{what_frank_said}""]
# >> %Q+Joe said: "Frank said: "#{what_frank_said}""+
