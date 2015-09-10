require_relative '../odin_project3'

describe OdinProject3 do

  before :each do
    @odin = OdinProject3.new
  end

  dictionary = [
    "below","down","go","going","horn","how","howdy","it","i",
    "low","own","part","partner","sit"]

  describe '#substrings' do
    it 'should return a hash' do
      expect(@odin.substrings("test",dictionary)).to be_kind_of(Hash)
    end
    it 'should return the number of matches if given a single word' do
      expect(@odin.substrings("below",dictionary)).to eq({"below"=>1, "low"=>1})
    end
  end
end
