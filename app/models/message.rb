class Message < ApplicationRecord

  # No need for datetime validation since select is being used

  validates :link,
    presence: true,
    length: { maximum: 100 },
    format: { with: /www\.youtube\.com\/watch\?v=|https:\/\/youtu\.be\// }
end
