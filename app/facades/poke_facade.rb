# frozen_string_literal: true

require 'poke-api-v2'

class PokeFacade
  def initialize; end

  def get_poke(id:)
    PokeApi.get(pokemon: id)
  rescue JSON::ParserError
    false
  end
end
