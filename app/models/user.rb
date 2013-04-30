class User < ActiveRecord::Base
  attr_accessible :email, :username, :password
  has_secure_password

  validates :email,         :presence => true,
                            :uniqueness => true,
                            :format => { :with => /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/}
                            
  validates :username,      :presence => true,
                            :uniqueness => true

  validates :password_digest, :presence => true,
                            :length => { :minimum => 6 }
	
  has_many :tweets, :dependent => :destroy
  has_many :followers, :dependent => :destroy


end
