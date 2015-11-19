class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :title
      t.string :url
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
