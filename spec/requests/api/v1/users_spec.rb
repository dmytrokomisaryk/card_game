require 'rails_helper'

describe "User API" do
  let(:user){create(:user)}
  it 'login' do
    post '/v1/user/login', params: {email: user.email, password: '12345678'}

    json = JSON.parse(response.body)
    expect(json['token']).to eq(user.token)
  end

  it 'should not login' do
    post '/v1/user/login', params: {email: user.email, password: 'fake_password'}

    json = JSON.parse(response.body)
    expect(json['errors']).to_not be_empty
  end
end