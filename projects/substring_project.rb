require 'pry'

# Class that contains a method which takes a string and an array of strings and checks how many times
# each word is in the string
# author: Matej Lietava
class SubstringProject

    def substrings_simple(string, array_of_words)
        result_hash = Hash.new
        string.downcase!
        array_of_words.each do |word|
            temp_string = string
            count = 0;
            until !temp_string.include?(word)
                if temp_string.include?(word) then count+= 1 end
                index = temp_string.index(word)
                temp_string = temp_string.slice(index + 1, temp_string.length - index)
            end
            if count > 0 then result_hash[word] = count end
        end
        result_hash
    end

    # Method using scan
    def substrings(string, array_of_words)
        result_hash = Hash.new
        string.downcase!
        count = 0;
        array_of_words.each do |word|
            count = string.scan(word).length
            result_hash[word] = count unless count == 0
        end
        result_hash
    end

    # substring = SubstringProject.new
    # string  = "Howdy partner, sit down! How's it going?"
    # dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    # puts substring.substrings(string, dictionary)
end