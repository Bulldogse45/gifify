class ChangeDefaultOfScoreInGifs < ActiveRecord::Migration
  def change
    change_column :gifs, :score, :integer, :default => 0
  end
end
