class Gif < ActiveRecord::Base
  validates_presence_of :title
  validate :must_have_url_or_image_upload


  belongs_to :user
  has_many :votes
  has_many :tags, :through => :taggings
  has_many :taggings
  attachment :gif_image, content_type: ["image/gif"]
  validates_format_of :url, :with => %r{\.(gif)\Z}i, :message=> "The URL must link to a .gif file.", :on => :create, :allow_blank => true



  def must_have_url_or_image_upload
    if gif_image == nil && url.empty?
      errors.add(:gif_image, "You must upload or enter the url to a gif")
    end
  end

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
