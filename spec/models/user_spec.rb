require 'rails_helper'

RSpec.describe User, type: :model do

    let(:user_2) { User.create(name: 'Rebecca Y', email: 'recca@opal.com', password: "aaabbb", password_confirmation: "aaabbb", username: "Alexoid") }
    let(:user_3) { User.create(name: 'Rebecca ryrty', email: 'reccafghjfgopal.com') }
    subject { User.create(username: 'Ale', fullname: 'a.azzz@overpower.com') }
end    