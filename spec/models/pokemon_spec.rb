require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  subject(:pokemon) { FactoryBot.build(:pokemon) }

  it { is_expected.to be_valid }

  describe '@name' do
    it { is_expected.to validate_presence_of(:name) }
  end
end

