# Substring
# Takes in an input and returns how many times another word can be found within each word

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dictionary)
  sub = Hash.new(0)
 
  input.downcase.split(" ").each do |input_word|
    dictionary.each do |dict_word|
      if input_word.include?(dict_word)
        sub[dict_word] += 1
      end
    end
  end
  puts sub
end

substrings("below", dictionary)
# => {"below"=>1, "low"=>1}
substrings("Howdy partner, sit down! How's it going?", dictionary)
# {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1}
