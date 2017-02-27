class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url
      t.integer :likes, default: 0
      t.integer :dislikes, default: 0
      t.belongs_to :user

      t.timestamps
    end
  end
end
