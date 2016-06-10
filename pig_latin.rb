def translate(phrase)
 
  new_word       = Array.new
  new_word_array = Array.new 
  words_array   =  Array.new 
  results_array =  Array.new 
  # This will separate the phrase into separate words inside an array
  words_array   =  phrase.split(" ")
  #p words_array  # debugger


  # INSERT HERE CODE FOR 'PHONEMES' "sch" and "qu" ...later!


  # this will collect each letter of each word into a 2-D array "results_array"
  for x in 0..words_array.length - 1
    results_array[x] = words_array[x].split("")
  end
  #p results_array  # debugger
  # Counting the first 3 conconants
  for x in 0..results_array.length-1 do 
  # Count Flags to count the first three consonants in each word
    counter = 0
    count3  = false
    count2  = false
    count1  = false

    for y in 0..2 do
      counter += 1 if !%w(a e i o u).include?(results_array[x][y])
    end

    count3 = true if counter == 3
    counter = 0

    for y in 0..1
      counter += 1 if !%w(a e i o u).include?(results_array[x][y]) 
    end

    count2 = true if counter == 2 && !count3 
    count1 = true if !%w(a e i o u).include?(results_array[x][0]) && !count2 # counter != 2

    new_word_array = results_array[x].collect(&:to_s)  # .collect(&:to_s) so that changes in "new_word_array" will not affect "results_array"
    # Begin translation
    if    count3
      3.times{new_word_array.shift}
      new_word << new_word_array.join("")   + results_array[x][0] + results_array[x][1] + results_array[x][2] + 'ay'
    elsif count2
      2.times{new_word_array.shift}
      new_word << new_word_array.join("")   + results_array[x][0] + results_array[x][1] + 'ay'
    elsif count1
      new_word_array.shift
      new_word << new_word_array.join("")   + results_array[x][0] + 'ay'  
    else
      new_word << results_array[x].join("") + 'ay' 
    end
    # p new_word, count3, count2, count1  #debugger
  end
    return new_word.join(" ")
end

#p translate("the quick brown fox jumps over the lazy dog")  #debugger
p translate("apple")
p translate("banana")
p translate("cherry")
p translate("eat pie")
p translate("three")
p translate("the quick brown fox")

#translate("the quick brown fox jumps over the lazy dog")  #minimum three letters!

  # for j in 0..words_array.length-1 
  #   letters_array = words_array[j].split("")
  #   if %w(a e i o u).include?(letters_array[0])
  #     letters_array << 'ay' 
  #     results_array << letters_array.join("") 
  #   else !%w(a e i o u).include?(letters_array[0])
  #     letters_array << letters_array.shift << 'ay' 
  #     results_array << letters_array.join("") 
  #   end
  # end
  # return results_array.join(",")


# p translate("apple")
# p translate("banana")

# some useful code for study below #
  # letters_array[x] = words_array[x].split("") 
  #   if %w(a e i o u).include?(letters_array[x][0])
  #     letters_array[x] << 'ay' 
  #     return letters_array[x].join("")
  #   else 
  #     shifted_letter = letters_array[x].shift 
  #     letters_array[x] << shifted_letter << 'ay'
  #     return letters_array[x].join("")
  #   end
  # end

  #word.each_char {|x| test_word << x } # test_word.push(x)
  # word << "ay" if word.start_with?('a','e','i','o','u')
  # word << %w(a e i o u).include?(word[0]) ? 'ay' : 'bay'
 
    #vowel_first_letter  = true if test_word[0].start_with?('a','e','i','o','u')
    #vowel_second_letter = true if test_word[1].start_with?('a','e','i','o','u')
    #vowel_third_letter  = true if test_word[2].start_with?('a','e','i','o','u')
