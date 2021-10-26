require 'test_helper'

class ChannelTest < ActiveSupport::TestCase
  def setup  
    @channelTest = Channel.create(name: 'JavaScript')
  end

  test "validate channel create" do
    assert @channelTest.valid?
  end

  test "validate user-channels association" do
    assert  @channelTest.users
  end

  test "validate channels_users association" do
    assert  @channelTest.channel_users
  end

  test "validate channels-messages association" do
    assert  @channelTest.messages
  end
  
  test "validate presence of channels name" do
    channel = Channel.new(name: '')
    assert_not  channel.valid?
  end
end
