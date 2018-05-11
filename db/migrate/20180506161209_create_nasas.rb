class CreateNasas < ActiveRecord::Migration[5.2]
  def change
    create_table :nasas do |t|
      t.string :copyright, null: false
      t.string :date, null: false
      t.string :explanation, null: false
      t.string :title, null: false
      t.string :url, null: false
      t.timestamps
    end
  end
end
