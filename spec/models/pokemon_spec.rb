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
require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  subject(:pokemon) { FactoryBot.build(:pokemon) }

  it { is_expected.to be_valid }

  describe '@name' do
    it { is_expected.to validate_presence_of(:name) }
  end
end

