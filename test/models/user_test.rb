require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @userTest = User.create(name: 'Rebehjkccia y', email: 'recca@opjhkdefal.cokima', password: "vaabbb", username: "fAlexoid")
  end
  test "validate user create" do
    assert @userTest.valid?
  end

  test "validate user-messages association" do 
    assert @userTest.messages
  end

  test "validate user-channels association" do
    assert  @userTest.channels
  end

  test "validate channels_users association" do
    assert  @userTest.channel_users
  end

  test "validate user-notification association" do
    assert  @userTest.notifications
  end

  test "validate user-services association" do
    assert  @userTest.services
  end  

  test "Should not save user without email" do
    user = User.new(name: 'Rebehjkccia y', email: '', password: "vaabbb", username: "fAlexoid")
    assert_not user.save
  end

  test "validate uniqueness of user email" do
    user1 = User.new(name: 'Rebehjkccia y', email: 'recca@opjhkdefal.cokima', password: "vaabbb", username: "sadasd")
    assert_not user1.valid?
  end 

  test "validate uniqueness of user username" do
    user=User.new(name: 'Rebehjkccia y', email: 'recca@asdasd.com', password: "vaabbb", username: "fAlexoid")
    assert_not user.valid?
  end  

  
end

