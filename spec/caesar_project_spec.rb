require 'spec_helper'
require_relative '../caesar_project'

# This is the test class for the Caesar cypher project
# author: Matej Lietava

describe CaesarProject do

    # This tests the caesar cipher array method which uses a fixed array to shift the letters. 
    context "When testing caesar cipher array method" do
        
        it "shift the characters using a fixed array and a valid shift value" do
            caesar = CaesarProject.new
            expected_string = "Ftue ue m fqef?"
            result_string = caesar.caesar_cipher_array("This is a test?", 12)
            expect(result_string).to eq(expected_string)
        end

        it "return a nil value when passed a valid string and a negative shift value" do
            caesar = CaesarProject.new
            expected_string = nil
            result_string = caesar.caesar_cipher_array("Again, I am testing./;?", -17)
            expect(result_string).to eq(expected_string)
        end
        
        it "returns an empty string when passed an empty string and a valid shift value" do
            caesar = CaesarProject.new
            expected_string = ""
            result_string = caesar.caesar_cipher_array("", 4)
            expect(result_string).to eq(expected_string)
        end

        it "return a string of non-alphabetic characters when passed a string of non-alphabetic characters and a valid shift value" do
            caesar = CaesarProject.new
            expected_string = "?>@{@"
            result_string = caesar.caesar_cipher_array("?>@{@", 32838)
            expect(result_string).to eq(expected_string)
        end

        it "return a string of numeric characters when passed a string of numeric characters and a valid shift value" do
            caesar = CaesarProject.new
            expected_string = "546754"
            result_string = caesar.caesar_cipher_array("546754", 32838)
            expect(result_string).to eq(expected_string)
        end
    end

    #This is testing the second variation of the method for the cipher.
    context "When testing caesar cipher byte method" do
        
        it "shift the characters using its byte array and a valid shift value" do
            caesar = CaesarProject.new
            expected_string = "Aopz pz h alza?"
            result_string = caesar.caesar_cipher_byte("This is a test?", 1671)
            expect(result_string).to eq(expected_string)
        end

        it "return a nil value when passed a valid string and a negative shift value" do
            caesar = CaesarProject.new
            expected_string = nil
            result_string = caesar.caesar_cipher_byte("Again, I am testing./;?", -17)
            expect(result_string).to eq(expected_string)
        end
        
        it "returns an empty string when passed an empty string and a valid shift value" do
            caesar = CaesarProject.new
            expected_string = ""
            result_string = caesar.caesar_cipher_byte("", 4)
            expect(result_string).to eq(expected_string)
        end

        it "return a string of non-alphabetic characters when passed a string of non-alphabetic characters and a valid shift value" do
            caesar = CaesarProject.new
            expected_string = "?>@{@"
            result_string = caesar.caesar_cipher_byte("?>@{@", 32838)
            expect(result_string).to eq(expected_string)
        end

        it "return a string of numeric characters when passed a string of numeric characters and a valid shift value" do
            caesar = CaesarProject.new
            expected_string = "00098437"
            result_string = caesar.caesar_cipher_byte("00098437", 32838)
            expect(result_string).to eq(expected_string)
        end
    end

    #This is testing the final varion of the cipher. The most preferred way
    context "When testing caesar cipher ord method" do
        
        it "shift the characters using its byte value and a valid shift value" do
            caesar = CaesarProject.new
            expected_string = "Kyzj zj r kvjk?"
            result_string = caesar.caesar_cipher_ord("This is a test?", 193847)
            expect(result_string).to eq(expected_string)
        end

        it "return a nil value when passed a valid string and a negative shift value" do
            caesar = CaesarProject.new
            expected_string = nil
            result_string = caesar.caesar_cipher_ord("Again, I am testing./;?", -17)
            expect(result_string).to eq(expected_string)
        end
        
        it "returns an empty string when passed an empty string and a valid shift value" do
            caesar = CaesarProject.new
            expected_string = ""
            result_string = caesar.caesar_cipher_ord("", 4)
            expect(result_string).to eq(expected_string)
        end

        it "return a string of non-alphabetic characters when passed a string of non-alphabetic characters and a valid shift value" do
            caesar = CaesarProject.new
            expected_string = "?>@{@"
            result_string = caesar.caesar_cipher_ord("?>@{@", 32838)
            expect(result_string).to eq(expected_string)
        end

        it "return a string of numeric characters when passed a string of numeric characters and a valid shift value" do
            caesar = CaesarProject.new
            expected_string = "-194857"
            result_string = caesar.caesar_cipher_ord("-194857", 32838)
            expect(result_string).to eq(expected_string)
        end
    end

end