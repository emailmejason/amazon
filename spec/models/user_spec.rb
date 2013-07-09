require 'spec_helper'

describe User do
 before do
  @user =FactoryGirl.create(:user)

 end

 it "authenticates with email and password" do
   expect(@user.authenticate("password")).to eq(@user)
 end

 it "authenticates with an incorrect password" do
    expect(@user.authenticate("incorrect")).to be_false
 end

 it  "buy an item" do
  item =FactoryGirl.create(:item,{:user_id=>@user.id})

  expect(@user.items).to include(item)
  end
end
