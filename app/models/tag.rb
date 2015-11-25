class Tag < ActiveRecord::Base

  has_many :taggings
  has_many :gifs, :through => :taggings

  def remove_spaces
    self.name = self.name.gsub(" ", "_")
  end

  def remove_non_alphanumeric
    self.name = self.name.gsub(/[^0-9a-z ]/i, '')
  end

  private

  def self.clean_name(arg)
    tag = Tag.new(name:arg)
    tag.remove_spaces
    tag.remove_non_alphanumeric
  end

end
