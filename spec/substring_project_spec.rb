require 'spec_helper'
require_relative '../projects/substring_project'

describe SubstringProject do

    context "When testing the substrings method of the SubstringProject class" do
        it "will return the hash containing the right counts of substrings of a valid string" do
            substring = SubstringProject.new
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            string  = "Howdy partner, sit down! How's it going?"
            expected_hash = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
            result_hash = substring.substrings(string, dictionary)
            expect(expected_hash).to eq(result_hash)
        end

        it "will return an empty hash as string will not contain any substrings" do
            substring = SubstringProject.new
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            string  = "dknbkjdgbnekltbntorje;hbnklbn;erbnt;orejbn"
            expected_hash = {}
            result_hash = substring.substrings(string, dictionary)
            expect(expected_hash).to eq(result_hash)
        end

        it "will return an empty hash as string will be empty" do
            substring = SubstringProject.new
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            string  = ""
            expected_hash = {}
            result_hash = substring.substrings(string, dictionary)
            expect(expected_hash).to eq(result_hash)
        end
    end

    context "When testing the substrings_simple method of the SubstringProject class" do
        it "will return the hash containing the right counts of substrings of a valid string" do
            substring = SubstringProject.new
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            string  = "Howdy partner, sit down! How's it going?"
            expected_hash = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
            result_hash = substring.substrings_simple(string, dictionary)
            expect(expected_hash).to eq(result_hash)
        end

        it "will return an empty hash as string will not contain any substrings" do
            substring = SubstringProject.new
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            string  = "dknbkjdgbnekltbntorje;hbnklbn;erbnt;orejbn"
            expected_hash = {}
            result_hash = substring.substrings_simple(string, dictionary)
            expect(expected_hash).to eq(result_hash)
        end

        it "will return an empty hash as string will be empty" do
            substring = SubstringProject.new
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            string  = ""
            expected_hash = {}
            result_hash = substring.substrings_simple(string, dictionary)
            expect(expected_hash).to eq(result_hash)
        end
    end
end