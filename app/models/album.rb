class Album < ApplicationRecord
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos

  attr_accessor :photos_attributes

  validates :title, presence: true, length: { maximum: 30 }
  validates :category, presence: true
  # TODO: Validate number of images per album. A cap of 75 should be fine.
end
