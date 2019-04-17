require_relative '../../src/items/aged_brie'

describe "testing aged_brie" do
  it "should update aged brie" do
    item = AgedBrie.new(5,2)
    item.update
    expect(item.quality).to eql(3)
    expect(item.sell_in).to eql(4)
  end

end