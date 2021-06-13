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
require 'rails_helper'

RSpec.describe Type, type: :model do
  subject(:type) { FactoryBot.build(:type) }

  it { is_expected.to be_valid }

  describe '@name' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
