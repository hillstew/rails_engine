require 'rails_helper'

describe "Merchant API" do
  it "sends a list of merchants" do
    create_list(:merchant, 3)

    get '/api/v1/merchants'

    expect(response).to be_successful

    merchants = JSON.parse(response.body)

    expect(merchants["data"].count).to eq(3)
  end

  it "can get one merchant by its id" do
    id = create(:merchant).id

    get "/api/v1/merchants/#{id}"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful
    expect(merchant["data"]["id"]).to eq(id.to_s)
  end

  it "can find one merchant by query params" do
    m_1 = create(:merchant)

    get "/api/v1/merchants/find?name=#{m_1.name}"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful

    expect(merchant["data"]["id"]).to eq(m_1.id.to_s)
  end

  it "can find one merchant by query params" do
    m_1 = create(:merchant)

    get "/api/v1/merchants/find?name=#{m_1.name}"

    merchant = JSON.parse(response.body)

    expect(response).to be_successful

    expect(merchant["data"]["id"]).to eq(m_1.id.to_s)
  end
end