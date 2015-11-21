class User < ActiveRecord::Base

  acts_as_authentic do |c|
    c.login_field = :login
  end
  validates_presence_of :login, :email


end
