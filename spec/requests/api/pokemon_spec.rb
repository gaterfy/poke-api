# frozen_string_literal: true

require 'swagger_helper'

RSpec.describe 'api/v1/pokemon', type: :request do
  let(:pokemon) { FactoryBot.create(:pokemon) }

  describe "GET #index" do
    subject(:index) { get '/api/v1/pokemon' }
    it "should get index" do
      index

      expect(response).to have_http_status(200)
    end
  end

  describe "GET #show" do
    subject(:show) { get('/api/v1/pokemon', params: {id: 1}) }
    it "should get show" do
      show

      expect(response).to have_http_status(200)
    end
  end
end
