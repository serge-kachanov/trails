class Tweet < ActiveRecord::Base
  attr_accessible :autor_id, :tweet, :parent_id
  belongs_to :author, class_name: "User", foreign_key: "autor_id"
 
  def already_retweeted? current_user
    Retweet.where(tweet_id: self.id, user_id: current_user.id).count > 0
  end
end   
