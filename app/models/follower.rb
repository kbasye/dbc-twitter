# Follower is not good name for this class. It refers to the profiles the 'User' is following.
class Follower < ActiveRecord::Base
  attr_accessible :username
  belongs_to :user

end
