class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :meta_topic, null: false
      t.string :sub_topic, null: false
      t.timestamps
    end
  end
end
