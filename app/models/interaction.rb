class Interaction < ApplicationRecord
  belongs_to :user
  belongs_to :article
  # validates :liked, null: false, default: false
  # validates :has_read, null: false, default: false
  # validates :read_later, null: false, default: false
end
