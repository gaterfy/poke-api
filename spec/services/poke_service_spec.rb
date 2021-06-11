# spec/models/pokemon_spec.rb

require 'rails_helper'

RSpec.describe PokeService, type: :service do
  subject(:service) { described_class.new.call }

  let(:body) do
    {
      "abilities": [],
      "base_experience": 64,
      "forms": [],
      "game_indices": [],
      "height": 7,
      "held_items": [],
      "id": 1,
      "is_default": true,
      "location_area_encounters": 'https://pokeapi.co/api/v2/pokemon/1/encounters',
      "moves": [],
      "name": 'bulbasaur',
      "order": 1,
      "past_types": [],
      "species": {},
      "sprites": {},
      "stats": [],
      "types": [{
        "slot": 1,
        "type": {
          "name": 'grass',
          "url": 'https://pokeapi.co/api/v2/type/12/'
        }
      }],
      "weight": 69
    }
  end

  before do
    WebMock.stub_request(:get, /pokeapi.co/).to_return(body: '{}', status: 404)
    allow(service).to receive(:facade_result).and_return(body)
  end

  describe '#describe' do
    context 'when the request is success' do
      it 'creates pokemons' do
        expect(service).to change { Pokemon.count }.by(1)
      end
      it 'creates types' do
        expect(service).to change { Type.count }.by(1)
      end
    end

    context 'when there is no data for the given id' do
      it 'creates pokemons' do
        expect(service).to change { Pokemon.count }.by(1)
      end
      it 'creates types' do
        expect(service).to change { Type.count }.by(1)
      end
    end

    context 'when there is no data for the given id' do
      let(:body) { "NOT FOUND" }

      it 'does not creates pokemons' do
        expect(service).to_not change { Pokemon.count }.by(1)
      end
      it 'does not creates types' do
        expect(service).to_not change { Type.count }.by(1)
      end
    end
  end
end
