class Photo < ApplicationRecord
  belongs_to :album

  validates :title, presence: false, length: { maximum: 30 }

  has_attached_file :image,
    path: ":rails_root/public/images/:id/:filename",
    url: "/images/:id/:filename"

  # TODO: Throw error if content_type is not an image
  validates :image, attachment_presence: true
  validates_attachment_content_type :image, content_type: /image/
  validates_with AttachmentPresenceValidator, attributes: :image
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 10.megabytes
end
