class Message < ApplicationRecord
  # No need for datetime validation since select is being used
  validates :title,
    presence: true, length: { maximum: 50 }

  validates :link,
    presence: true,
    length: { maximum: 100 },
    format: { with: /www\.youtube\.com\/watch\?v=|https:\/\/youtu\.be\// }
    # iframe format
    # format: { with: /(\A<iframe\swidth)(.*)(src=\"https:\/\/www\.youtube\.com\/embed)(.*)(><\/iframe>\Z)/ }
end
