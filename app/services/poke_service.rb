# app/services/poke_service.rb
# frozen_string_literal: true

# This should create pokemon and types
class PokeService
  attr_reader :result

  def initialize
    @result = false
  end

  def call
    (1..).each do |n|
      result = facade_result(n)

      return false if !result || Pokemon.exists?(name: result.name) || result.name.blank?

      type_ids = create_types(result.types) if result.types.present?
      create_pokemon(result, type_ids)
    end

    true
  end

  def create_pokemon(result, type_ids)
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
        weight: result.weight
      )
    end
  end

  private

  def facade_result(id)
    @_facade_result = http_client.get_poke(id: id)
  end

  def http_client
    @http_client ||= PokeFacade.new
  end

  def create_types(lst)
    list_types_id = []

    lst.each do |type|
      type_created = Type.create(name: type.type.name)
      list_types_id.push(type_created.id)
    end

    list_types_id
  end
end
