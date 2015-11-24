class Gif < ActiveRecord::Base
  validates_presence_of :title, :url
  validates_format_of :url, :with => %r{\.(gif)\Z}i, :message=> "The URL must link to a .gif file.", :on => :create

  belongs_to :user
  has_many :votes

end
