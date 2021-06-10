class PokeService

  attr_reader :result

  def initialize
    @result = {}
  end

  def facade_result
    @_facade_result ||= http_client.get_poke
  end

  def http_client
    @http_client ||= PokeFacade.new
  end

end
