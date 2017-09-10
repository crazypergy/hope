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


  describe 'a valid album' do
    subject { album }
    let(:album) { FactoryGirl.build(:album) }

    context 'all fields are valid' do
      it { is_expected.to be_valid }
    end
  end

  describe 'invalid albums' do
    subject { album }

    context 'no title' do
      let(:album) { FactoryGirl.build(:album, title: '') }
      it { is_expected.to be_invalid }
    end

    context 'no category' do
      let(:album) { FactoryGirl.build(:album, category: '') }
      it { is_expected.to be_invalid }
    end
  end
end
