require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){create(:user)}
  it 'has a valid factory' do
    expect(user).to be_valid
    expect(build(:user)).to be_valid
  end

  it 'password validation' do
    expect(user.valid_password?('12345678')).to be_truthy
    expect(user.valid_password?('fake_password')).to be_falsey
  end
end