# frozen_string_literal: true

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
FactoryBot.define do
  factory :type do
    name { 'flying' }
  end
end
