# frozen_string_literal: true

class Type < ApplicationRecord
  has_and_belongs_to_many :pokemons
  validates :name, presence: true
end

# == Schema Information
#
# Table name: types
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  pokemon_id :integer
#
# Indexes
#
#  index_types_on_pokemon_id  (pokemon_id)
#
