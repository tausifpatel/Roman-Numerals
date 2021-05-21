
require "kata"

describe "Roman numerals" do 
    context "base numbers" do 
        numerals = {
            1000 => "M",
            900  => "CM",
            500  => "D",
            400  => "CD",
            100  => "C",
            90   => "XC",
            50   => "L",
            40   => "XL",
            10   => "X",
            9    => "IX",
            5    => "V",
            4    => "IV",
            1    => "I"        
    }.each {|key, value| 
        it "should return #{value} if given #{key}" do 
            expect(roman(key)).to eq value
        end 
    }
    end 

    context "random numbers" do 
        it "should return XIV if given 14" do 
            expect(roman(14)).to eq "XIV"
        end 
        it "should return XXXIX if given 39" do 
            expect(roman(39)).to eq "XXXIX"
        end 
        it "should return MMXXI if given 2021" do 
            expect(roman(2021)).to eq "MMXXI"
        end 
        it "should return XL if given 40" do 
            expect(roman(40)).to eq "XL"
        end 
        it "should return XCIX if given 99" do 
            expect(roman(99)).to eq "XCIX"
        end 
        it "should return MCMXII if given 1912" do 
            expect(roman(1912)).to eq "MCMXII"
        end 
    end 
end

