# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PokeFacade, type: :facade do
  subject(:facade) { described_class.new }

  before do
    WebMock.stub_request(:get, /pokeapi.co/).to_return(body: '{}', status: 200)
  end

  describe '#get_poke' do
    subject(:get_poke) { facade.get_poke(id: 1) }

    it { p get_poke.as_json } # is_expected.to be_a(PokeApi::Pokemon) }
  end
end
