class Article < ApplicationRecord
  belongs_to :user
  has_many :interactions
  validates :title, presence: true
  validates :content, presence: true
  validates :category, presence: true
end
