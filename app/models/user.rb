class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :interactions
  has_many :articles, through: :interactions
  validates :username, presence: true
  validates :username, uniqueness: true


  def find_interaction(article)
    self.interactions.each do |int|
      if  int.article == article       
        return int
      end
    end
    return false
  end

  def is_liked?(article)
    interaction = find_interaction(article)
    if interaction && interaction.liked
      return true   
    end
    return false
  end
  def is_saved?(article)
    interaction = find_interaction(article)
    if interaction && interaction.read_later == true
      return true
    else   
      return false
    end
  end
end
