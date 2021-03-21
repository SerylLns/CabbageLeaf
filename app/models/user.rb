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

end
