class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :photo, null: false
      t.string :title, null: false
      t.string :explanation, null: false
      t.belongs_to :user
      t.timestamps
    end
  end
end
