require 'rails_helper'

RSpec.describe User, type: :model do

    let(:user_2) { User.create(name: 'Rebecca y', email: 'recca@opal.coma', password: "aaabbb", username: "Alexoid") }
    let(:channel_2) { Channel.create(name: 'JavaScript') }
    let(:user) { User.create(name: 'Ale am', email: 'aaaaaa@opal.coma', password: "aaabbb", username: "Alexdfh" )}
    
    before do
        ChannelUser.create(user_id: user.id, channel_id: channel_2.id)
    end
    context 'Associations' do
        it { expect(user).to have_many(:notifications) }
        it { expect(user).to have_many(:messages) }
        it { expect(user).to have_many(:services) }
        it { expect(user).to have_many(:channels) }
        it { expect(user).to have_many(:channel_users) }
    end
    after do 
        user_2.delete
        
    end

    
end    