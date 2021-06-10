class Pokemon < ApplicationRecord
  serialize :abilities, Array
  serialize :held_items, Array
  serialize :types, Array

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
#  name                     :string
#  order                    :integer
#  types                    :text
#  weight                   :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
