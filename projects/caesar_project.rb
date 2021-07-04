require 'pry'

class CaesarProject 
    # In this class we have 3 different methods of solving the Caesars cypher challenge
    # author: Matej Lietava

    # Using fixed array of alphabet - noob, I know
    def caesar_cipher_array(string, shift)
        if shift > 0
            alphabet_array = ["a", "b", "c", "d", "e", "f", "g", "h", 
                        "i", "j", "k", "l", "m", "n", "o", "p",
                        "q", "r", "s", "t", "u", "v", "w", "x",
                        "y", "z"]
            result_str = ""
            char_array = string.chars

            char_array.each do |char|
                char_index = alphabet_array.find_index(char.downcase)
                result_char = char
                if char_index != nil
                    new_index = char_index + shift
                    if (new_index >= 26)
                        new_index -= 26
                    end
                    result_char = alphabet_array[new_index]
                    if (char.swapcase == char.downcase)
                        result_char = result_char.upcase
                    end
                end
                result_str.insert(result_str.length, result_char)
            end
            result_str
        end
    end

    # Using a byte array to shift
    def caesar_cipher_byte(string, shift)
        if shift > 0
            byte_array = string.bytes
            
            if (shift > 26)
                shift %= 26
            end

            byte_array.each_with_index do |byte, index|
                byte.to_i
                result_byte = byte
                if byte.between?(65, 90) || byte.between?(97, 122)
                    result_byte += shift
                    if !result_byte.between?(65, 90) and !result_byte.between?(97, 122)
                        result_byte -= 26
                    end
                end
                byte_array[index] = result_byte
            end
            byte_array.pack("c*")
        end
    end

    #Using ord to directly add to string
    def caesar_cipher_ord(string, shift)
        if shift > 0
            result_str = ""
            
            if (shift > 26)
                shift %= 26
            end

            string.each_char do |char|
                char.to_i
                result_char = char
                if (char.ord.between?(65, 90) || char.ord.between?(97, 122))
                    char_code = char.ord + shift
                    if (char.ord.between?(65, 90) and !char_code.between?(65,90)) or (char.ord.between?(97, 122) and !char_code.between?(97,122))
                        char_code -= 26
                    end
                    result_char = char_code.chr
                end
                result_str.insert(result_str.length, result_char)
            end
            result_str
        end
    end

    caesar = CaesarProject.new
    string = "This is a test?"
    shift = 193847
    puts caesar.caesar_cipher_ord(string, shift)
end