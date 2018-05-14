class ChangeNasasColumn < ActiveRecord::Migration[5.2]
  def change
    change_column(:nasas, :copyright, :string, null: true)
  end
end
