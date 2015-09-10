require_relative '../bubble_sort'


describe "#bubble_sort" do
  it 'should return an Array' do
    expect(bubble_sort([2,3])).to be_kind_of(Array)
  end
  it 'should sort an Array' do
    expect(bubble_sort([3,2])).to eq([2,3])
  end
  it 'should sort an Array' do
    expect(bubble_sort([3,2,1])).to eq([1,2,3])
  end
  it 'should sort an Array' do
    expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
  end
end

describe '#bubble_sort_by' do
  it 'should return an Array' do
    expect(bubble_sort_by(["a","be"]) do |left,right|
      left.length - right.length
    end).to be_kind_of(Array)
  end

  it 'should sort by word length' do
    expect(bubble_sort_by(["hi","hello","hey"]) do |left,right|
      left.length - right.length
    end).to eq(["hi", "hey", "hello"])
  end
  it 'should sort by word length reversed' do
    expect(bubble_sort_by(["hi", "hey", "hello"]) do |left,right|
      right.length - left.length
    end).to eq(["hello", "hey", "hi"])
  end
end
