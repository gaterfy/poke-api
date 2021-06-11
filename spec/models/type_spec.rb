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
# spec/models/type_spec.rb

require 'rails_helper'

RSpec.describe Type, type: :model do

  it { is_expected.to be_valid }

end
