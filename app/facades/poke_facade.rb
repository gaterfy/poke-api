require 'poke-api-v2'

class PokeFacade
  def initialize; end

  def get_poke(id:)
    begin
      PokeApi.get(pokemon: id)
    rescue JSON::ParserError
      return false
    end
  end

end
