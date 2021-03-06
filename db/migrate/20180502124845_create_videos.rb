class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :youtube_id, null: false
      t.string :title, null: false
      t.string :description, null: false
      t.string :video_id, null: false
      t.timestamps
    end
  end
end
