require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  
  def setup  
    @channelTest = Channel.create(name: 'JavaScript')
    @userTest = User.create(name: 'Rebehjkccia y', email: 'recca@opjhkdefal.cokima', password: "vaabbb", username: "fAlexoid")
    @user = User.create(name: 'Rebehjkccia y', email: 'recca@opjhkdefal.cok', password: "vaabbb", username: "Alex")
    @message = Message.create(user_id: @userTest.id, channel_id: @channelTest.id, body: 'Hello worldddd @fAlexoid')
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

  test "test message method mentioned_usernames" do
    names=@message.mentioned_usernames
    assert names.length >=1
  end

  test "test message method mentioned_usernames two usernames" do
    mes = Message.new(user_id: @userTest.id, channel_id: @channelTest.id, body: 'Hello worldddd @fAlexoid @Alex')
    name=mes.mentioned_usernames
    assert name.length == 2
  end  


end
