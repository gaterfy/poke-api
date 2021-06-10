require 'poke-api-v2'

class PokeFacade

  def initialize
  end

  def get_poke
    PokeApi.get(pokemon: {limit: 30, offset: 15})
  end

end
