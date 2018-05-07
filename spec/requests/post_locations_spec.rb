require 'rails_helper'

describe "post a location route", :type => :request do

  before do
    post '/locations', params: { :country => 'Mexico', :city => 'Mexico City' }
  end

  it 'returns the country' do
    expect(JSON.parse(response.body)['country']).to eq('Mexico')
  end

  it 'returns the city' do
    expect(JSON.parse(response.body)['city']).to eq('Mexico City')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
