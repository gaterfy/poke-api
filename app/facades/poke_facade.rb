require 'poke-api-v2'

class PokeFacade
  def initialize; end

  def get_poke(id:)
    p id
    PokeApi.get(pokemon: id)
  end

end
