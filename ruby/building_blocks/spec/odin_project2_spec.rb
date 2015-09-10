require_relative '../odin_project2'

describe OdinProject2 do

  before :each do
    @odin = OdinProject2.new
  end

  describe "#stock_picker" do
    it "should return an array" do
      expect(@odin.stock_picker([1,2,3,4,5])).to be_kind_of(Array)
    end
    it "should return a buying and selling day with profit" do
      expect(@odin.stock_picker([1,2,1,2,1])).to eq([1,0,1])
    end
    it "should return a buying and selling day with profit, exact copy from odin project" do
      expect(@odin.stock_picker([17,3,6,9,15,8,6,1,10])).to eq([12,1,4])
    end
    it "should return a buying and selling day with profit, exact copy from odin project" do
      expect(@odin.stock_picker([0,3,6,9,15,8,6,1,0])).to eq([15,0,4])
    end
  end
end
