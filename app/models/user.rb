class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body
  has_many :tweets, foreign_key: "autor_id"
  validates :name, :presence => true
    
  def already_follow? profile
    Following.where(from_id: self.id, to_id: profile.id).count > 0 
  end

  def authorized_tweets
    ids = []
    ids << self.id
    ids << Following.where(from_id: self.id).map{ |f| f.to_id }
    Tweet.where(autor_id: ids).order("id DESC")
  end
end
