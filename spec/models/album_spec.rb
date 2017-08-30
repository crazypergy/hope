require 'rails_helper'

RSpec.describe Album, type: :model do
  describe 'validations' do
    # Title
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_length_of(:title).is_at_most(30) }

    # Category
    it { is_expected.to validate_presence_of(:category) }

    # Association with Photo
    it { is_expected.to have_many(:photos).dependent(:destroy) }
    it { is_expected.to accept_nested_attributes_for(:photos) }
  end
end
