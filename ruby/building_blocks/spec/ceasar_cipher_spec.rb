require_relative '../ceasar_cipher'


describe "#ceasar_cipher" do
  it "should return a string" do
    expect(ceasar_cipher("test",1)).to be_kind_of(String)
  end

  it "should cipher text with a cipher of 1" do
    expect(ceasar_cipher("aaa",1)).to eq("bbb")
  end

  it "should cipher text with a cipher of 2" do
    expect(ceasar_cipher("aaa",2)).to eq("ccc")
  end

  it "should cipher backwards" do
    expect(ceasar_cipher("ccc",-2)).to eq("aaa")
  end

  it "should keep case" do
    expect(ceasar_cipher("AbC",1)).to eq("BcD")
  end

  it "should wrap from z to a" do
    expect(ceasar_cipher("z",1)).to eq("a")
  end

  it "should wrap from a to z" do
    expect(ceasar_cipher("a",-1)).to eq("z")
  end

  it "should wrap from Z to A" do
    expect(ceasar_cipher("Z",1)).to eq("A")
  end

  it "should wrap from A to Z" do
    expect(ceasar_cipher("A",-1)).to eq("Z")
  end

  it "should not cipher special chars" do
    expect(ceasar_cipher("!@#$%^&*(){[]}1234567890",2)).to eq("!@#$%^&*(){[]}1234567890")
  end

  it "should cipher the exact example from the project page" do
    expect(ceasar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end
