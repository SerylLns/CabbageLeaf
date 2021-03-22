class Article < ApplicationRecord
  has_one_attached :photo
  has_many :interactions
  validates :title, presence: true
  validates :content, presence: true
  validates :category, presence: true
  CATEGORIES = ["port", "Femme", "Monde", "France", "LGBT+", "Droit", "Animaux", "Afrique",
                "Europe","Sante","Inovation","Environnement","Decouverte","Business", "Ethique", "Nature", 
                "Science","Amerique", "Tourisme"]

  def get_tags
    return self.category.split(", ").sort
  end
end
