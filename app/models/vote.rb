class Vote < ActiveRecord::Base

  belongs_to :user
  belongs_to :gif

  validates_presence_of :user, :gif
  validates :gif_id, uniqueness: {scope: :user_id, message:"You can only vote once!"}

end
