require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  
  def setup  
    @channelTest = Channel.create(name: 'JavaScript')
    @userTest = User.create(name: 'Rebehjkccia y', email: 'recca@opjhkdefal.cokima', password: "vaabbb", username: "fAlexoid")
    @message = Message.create(user_id: @userTest.id, channel_id: @channelTest.id, body: 'Hello worldddd')
  end

  test "validate message create" do
    assert @message.valid?
  end

  test "should belongs to user" do
    assert @message.user
  end

  test "should belongs to channel" do
    assert @message.channel
  end

end
