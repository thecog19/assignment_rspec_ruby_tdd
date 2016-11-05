#happy path
#we put in an array [44, 30, 24, 32, 35, 30, 40, 38, 15]! get out an array! [2, 6]

#sad path
#someone gives us an array [1,1,1,1,1,1,1]! we cry.

#bad paths
#we  are given a string! we return error!
require 'stock_picker'

describe WarmUps do
  let(:warm) {WarmUps.new}
  describe "#stock_picker" do

    it "takes an array" do
      expect do
        warm.stock_picker([1,3]) 
      end.to_not raise_error
    end

    it "takes an array with at least two different number" do
      expect(warm.stock_picker([1,1,1,1])).to be false
    end

    it "raises an error if given a-non array" do
      expect {warm.stock_picker("ahahahaha")}.to raise_error("Please enter an array of numbers")
    end

    it "returns two days for maximum profit!" do
      expect(warm.stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])).to eq([2,6])
    end
  end
end
