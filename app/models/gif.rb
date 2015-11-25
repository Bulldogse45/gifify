class Gif < ActiveRecord::Base
  validates_presence_of :title, :url
  validates_format_of :url, :with => %r{\.(gif)\Z}i, :message=> "The URL must link to a .gif file.", :on => :create

  belongs_to :user
  has_many :votes
  has_many :tags, :through => :taggings
  has_many :taggings

  def tag_names=(tags)
    tags.split(",").collect{|t| t.strip}.each do |tag|
      this_tag = Tag.find_or_create_by(name: Tag.clean_name(tag))
      self.tags << this_tag
    end
  end

  def tag_names
    self.tags.collect{|t| t.name}.join(", ")
  end

end
