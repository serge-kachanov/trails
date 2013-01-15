class Tweet < ActiveRecord::Base
  attr_accessible :autor_id, :tweet
  belongs_to :author, class_name: "User", foreign_key: "autor_id"

end
