class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.integer :gif_id
      t.integer :user_id
      t.boolean :downvote

      t.timestamps null: false
    end
  end
end
