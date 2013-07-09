require 'spec_helper'

describe Item do

  it "can be purchased" do
    item = FactoryGirl.create(:item)
    expect(item.available?).to be_true
  end

  it "cannot be purchased" do
    item =FactoryGirl.create(:purchased_item)
    expect(item.available?).to be_false
  end
end