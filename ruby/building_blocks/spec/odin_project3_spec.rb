require_relative '../substrings'

  dictionary = [
    "below","down","go","going","horn","how","howdy","it","i",
    "low","own","part","partner","sit"]

describe '#substrings' do
  it 'should return a hash' do
    expect(substrings("test",dictionary)).to be_kind_of(Hash)
  end
  it 'should return the number of matches if given a single word' do
    expect(substrings("below",dictionary)).to eq({"below"=>1, "low"=>1})
  end
  it 'should return the number of matches if given a larger string' do
    expect(substrings(
      "Howdy partner, sit down! How's it going?",dictionary)).
        to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
  end
end
