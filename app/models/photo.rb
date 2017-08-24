class Photo < ApplicationRecord
  belongs_to :album

  has_attached_file :image,
    path: ":rails_root/public/images/:id/:filename",
    url: "/images/:id/:filename"

  # Need to write validations for this model, but this is pretty cool
  do_not_validate_attachment_file_type :image
end
