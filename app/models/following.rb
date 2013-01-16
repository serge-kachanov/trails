class Following < ActiveRecord::Base
  attr_accessible :from_id, :to_id
end
