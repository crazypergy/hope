require 'rails_helper'

RSpec.describe Photo, type: :model do
  describe 'validations' do
    # Title
    it { is_expected.not_to validate_presence_of(:title) }
    it { is_expected.to validate_length_of(:title).is_at_most(30) }

    # Paperclip validations
    it { is_expected.to validate_presence_of(:image) }
    it { is_expected.to have_attached_file(:image) }
    it { is_expected.to validate_attachment_content_type(:image).allowing(/image/) }
    it { is_expected.to validate_attachment_size(:image).less_than(10.megabytes) }

    # Association with Album
    it { is_expected.to belong_to(:album) }
  end

  describe 'a valid photo' do
    subject { photo }
    let(:album) { FactoryGirl.create(:album) }
    let(:photo) { FactoryGirl.create(:photo, album: album) }

    context 'photo with title is valid' do
      it { is_expected.to be_valid }
    end

    context 'photo without title is valid' do
      let(:photo) { FactoryGirl.build(:photo, album: album, title: '') }
      it { is_expected.to be_valid }
    end
  end
end
