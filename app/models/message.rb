class Message < ApplicationRecord
  # No need for datetime validation since select is being used
  validates :title,
    presence: true, length: { maximum: 50 }

  validates :link,
    presence: true,
    length: { maximum: 100 },
    # TODO: format: { with: /regex for embed html here/ }
end
