class PokeService

  def initialize; end

  def call
    (1..).each { |n|
      result = facade_result(n)
      p result
      return unless result.present?

      type_ids = create_types(result.types) if result.types.present?

      ActiveRecord::Base.transaction do
        Pokemon.create!(
            abilities: result.abilities,
            base_experience: result.base_experience,
            forms: result.forms,
            game_indices: result.game_indices,
            height: result.height,
            held_items: result.held_items,
            is_default: result.is_default,
            location_area_encounters: result.location_area_encounters,
            moves: result.moves,
            name: result.name,
            order: result.order,
            type_ids: type_ids,
            weight: result.weight,
        )
      end
    }
  end

  private

  def facade_result(id)
    @_facade_result ||= http_client.get_poke(id: id)
  end

  def http_client
    @http_client ||= PokeFacade.new
  end

  def create_types(lst)
    list_types_id = []

    lst.each { |type|
      type_created = Type.create( name: type.type.name)
      list_types_id.push(type_created.id)
    }

    list_types_id
  end

end
