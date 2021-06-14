# frozen_string_literal: true

class Pokemon < ApplicationRecord
  serialize :abilities, Array
  serialize :held_items, Array
  serialize :forms, Array
  serialize :game_indices, Array
  serialize :moves, Array
  serialize :types, Hash

  has_and_belongs_to_many :types
  validates :name, presence: true
end

# == Schema Information
#
# Table name: pokemons
#
#  id                       :integer          not null, primary key
#  abilities                :text
#  base_experience          :integer
#  forms                    :text
#  game_indices             :text
#  height                   :integer
#  held_items               :text
#  is_default               :boolean
#  location_area_encounters :string
#  moves                    :string
#  name                     :string           not null
#  order                    :integer
#  weight                   :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
# Indexes
#
#  index_pokemons_on_name  (name) UNIQUE
#
