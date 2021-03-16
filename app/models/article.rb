class Article < ApplicationRecord
  has_one_attached :photo
  has_many :interactions
  validates :title, presence: true
  validates :content, presence: true
  validates :category, presence: true
  CATEGORIES = ["sport", "femme", "monde", "france", "lgbt+", "droit", "animaux", "afrique",
                "europe","sante","inovation","environnement","decouverte","business", "ethique", "nature", 
                "science","amerique", "tourisme"]
end
