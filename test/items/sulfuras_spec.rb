require_relative '../../src/items/sulfuras'

describe "testing sulfuras" do
  it "should update sulfuras" do
    item = Sulfuras.new(5,2)
    item.update
    expect(item.quality).to eql(2)
    expect(item.sell_in).to eql(5)
  end

  it "should update sulfuras" do
    item = Sulfuras.new(10,4)
    item.update
    expect(item.quality).to eql(4)
    expect(item.sell_in).to eql(10)
  end

end