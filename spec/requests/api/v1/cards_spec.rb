require 'rails_helper'

describe "Card API" do
  let!(:user){create(:user)}
  let!(:card){create(:card)}

  it 'get card' do
    get '/v1/card/one_more', params: {}, headers: { 'HTTP_AUTHORIZATION': "Token token=#{user.token}" }

    json = JSON.parse(response.body)
    expect(json['kind']).to eq(card.kind)
    expect(json['value']).to eq(card.value)
  end

  it 'should not get card' do
    get '/v1/card/one_more', params: {}, headers: {}

    expect(response.body).to eq("HTTP Token: Access denied.\n")
    expect(response.code).to eq("401")
  end
end