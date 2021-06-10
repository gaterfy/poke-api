class Type < ApplicationRecord
  serialize :damage_relations, Hash
  serialize :move_damage_class, Hash
  serialize :generation, Hash
  serialize :names, Array
  serialize :moves, Array


end

# == Schema Information
#
# Table name: types
#
#  id                :integer          not null, primary key
#  damage_relations  :text
#  game_indices      :string
#  generation        :text
#  move_damage_class :text
#  moves             :string
#  name              :string
#  names             :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  pokemon_id        :integer
#
# Indexes
#
#  index_types_on_pokemon_id  (pokemon_id)
#
