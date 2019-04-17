require_relative '../src/item'

describe "testing item common methods" do
  it "should check if the item is under quality constraints" do
    item = Item.new(2,2)
    expect(item.in_quality_constraints?).to eql(true)
  end

  it "should check if the item is under quality constraints" do
    item = Item.new(2,50)
    expect(item.in_quality_constraints?).to eql(false)
  end
end