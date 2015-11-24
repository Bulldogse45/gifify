class AddScoreToGifs < ActiveRecord::Migration
  def change
    add_column :gifs, :score, :integer
  end
end
