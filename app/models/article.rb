class Article < ApplicationRecord
  has_one_attached :photo
  has_many :interactions
  validates :title, presence: true
  validates :content, presence: true
  validates :category, presence: true
  CATEGORIES = ["sport", "femme", "monde", "france", "lgbt+", "droit", "animaux", "afrique",
                "europe","santé","inovation","écologie","découverte","business", "éthique", "nature",
                "science","amérique", "tourisme"]

  def get_tags
    return self.category.split(", ")
  end
end
