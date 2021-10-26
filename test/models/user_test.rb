require 'test_helper'

class UserTest < ActiveSupport::TestCase
 
  test "validate user create" do
    user = User.new(name: 'Rebehjkccia y', email: 'recca@opjhkdefal.cokima', password: "vaabbb", username: "fAlexoid")
    assert user.valid?
  end

  test "validate user messages association" do
    user = User.new(name: 'Rebehjkccia y', email: 'recca@opjhkdefal.cokima', password: "vaabbb", username: "fAlexoid")
    assert user.messages
  end

  test "validate user channels association" do
    user = User.new(name: 'Rebehjkccia y', email: 'recca@opjhkdefal.cokima', password: "vaabbb", username: "fAlexoid")
    assert  user.channels
  end  

  test "Should not save user without email" do
    user = User.new(name: 'Rebehjkccia y', email: '', password: "vaabbb", username: "fAlexoid")
    assert_not  user.save
  end 
end

