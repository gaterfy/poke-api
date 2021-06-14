# frozen_string_literal: true

require 'swagger_helper'

RSpec.describe 'api/v1/pokemon', type: :request do
  let(:pokemon) { FactoryBot.create(:pokemon) }
  subject(:request) { get '/api/v1/pokemon' }

  describe "GET #index" do
    it "should get index" do
      # request

      # expect(response).to have_http_status(200)
    end
  end
end
