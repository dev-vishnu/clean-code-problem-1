require_relative '../../src/items/backstage_passes'

describe "testing backstage passes" do
  it "should update quality by 3 as the days left is less than 5" do
    item = BackstagePasses.new(5,2)
    item.update
    expect(item.quality).to eql(5)
    expect(item.sell_in).to eql(4)
  end

  it "should update quality by 2 as the days left is greater than 5 but less than 10" do
    item = BackstagePasses.new(8,2)
    item.update
    expect(item.quality).to eql(4)
    expect(item.sell_in).to eql(7)
  end

  it "should update quality by 1 as the days left is greater than 10" do
    item = BackstagePasses.new(12,2)
    item.update
    expect(item.quality).to eql(3)
    expect(item.sell_in).to eql(11)
  end

end