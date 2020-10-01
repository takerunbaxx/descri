class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :commnets, dependent: :destroy
  has_many :relationships, dependent: :destroy
  has_many :followings, through: :relationships, source: :port
  
  def follow(port)
    self.relationships.find_or_create_by(port_id: port.id)
  end
  
  def unfollow(port)
    relationship = self.relationships.find_by(port_id: port.id)
    relationship.destroy if relationship
  end
  
  def following?(port)
    self.followings.include?(port)
  end
end
