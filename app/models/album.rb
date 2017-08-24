class Album < ApplicationRecord
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos

  attr_accessor :photos_attributes
end

